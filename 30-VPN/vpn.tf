resource "aws_key_pair" "openvpn" {
  key_name = "openvpnas"
  public_key = file("E:\\devops_aws\\devsecops-aws-82s\\openvpnas.pub")
}


resource "aws_instance" "openvpn" {
  ami                    = data.aws_ami.openvpn.id
  key_name = aws_key_pair.openvpn.key_name
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_id.value]
  subnet_id = local.public_subnet_id
  instance_type          = "t3.micro"
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-vpn"
    }
  )
 
}