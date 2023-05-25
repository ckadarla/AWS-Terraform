locals {
  common_tags = {
    company      = var.company
    project      = "${var.company}-${var.project}"
    billing_code = var.billing_code
    Name = "${var.company}-${var.project}-${terraform.workspace}"
    environment  = terraform.workspace
  }
  name_prefix    = "${var.naming_prefix}-${terraform.workspace}"
}