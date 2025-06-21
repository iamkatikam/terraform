module "ec2" {
    source = "../terraform-aws-instance"
    #instance_type = "t3.large"
    sg_ids = var.security_group_ids
    tags = var.tags
}