module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "MNP-Tech-dev-APP"

  instance_type          = var.Instance_Type
  key_name               = "test"
  monitoring             = false
  vpc_security_group_ids = ["sg-0b82c6d144cf41e72"]
  subnet_id              = "subnet-0d8a400894e65b031"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    prj         = "mnp"
    owner       = "Devops"
  }
}
