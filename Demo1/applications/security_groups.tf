##################################################################################
# RESOURCES
##################################################################################

resource "aws_security_group" "webapp_http_inbound_sg" {
  name        = "WebServer_Inbound_rules"
  description = "Allow HTTP from Anywhere"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = data.terraform_remote_state.networking.outputs.vpc_id

  tags = {
    Name = "WebServer_Inbound_rules"
  }
}

resource "aws_security_group" "webapp_ssh_inbound_sg" {
  name        = "SSH_Inbound_rules"
  description = "Allow SSH from certain ranges"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ip_range]
  }

  vpc_id = data.terraform_remote_state.networking.outputs.vpc_id

  tags = merge(local.common_tags, {
    Name = "SSH_Inbound_rules"
  })
}

resource "aws_security_group" "webapp_outbound_sg" {
  name        = "Outbound"
  description = "Allow outbound connections"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = data.terraform_remote_state.networking.outputs.vpc_id

  tags = merge(local.common_tags, {
    Name = "WebServer_Outbound_rules"
  })
}

resource "aws_security_group" "rds_sg" {
  name        = "rds_inbound"
  description = "Allow inbound from web tier"
  vpc_id      = data.terraform_remote_state.networking.outputs.vpc_id

  tags = {
    Name = "rds_inbound"
  }

  // allows traffic from the SG itself
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    self      = true
  }

  // allow traffic for TCP 3306
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.webapp_http_inbound_sg.id]
  }

  // outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
