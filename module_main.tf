module "ec2" {
  source = "./modules/ec2"

  ami_id        = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
}
