resource "aws_instance" "public_server" {
  ami           = "ami-0404778e217f54308"
  instance_type = "t3.micro"

  # iam_instance_profile = aws_iam_instance_profile.demo.name

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
  subnet_id = aws_subnet.public.id
  # key_name = aws_key_pair.key_pair.id
  user_data = file("./userdata.sh")
  tags = {
    Name = var.tag_name
  }
}

# resource "aws_key_pair" "key_pair" {
#   key_name   = "example"
#   public_key = file("./mykey.pem")
# }


output "public_ip" {
  value = aws_instance.public_server.public_ip
}