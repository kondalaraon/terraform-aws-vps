locals {
  comman_tags = {
    Project = var.project
    Environment = var.environment
    Terraform = "true"

  }
  vpc-final_tags = merge{

    local.comman_tags,
    {
        Name = "${var.project}-${var.environment}"
    },
    var.vpc_tags

}
}