resource "aws_instance" "jenkins" {
    ami = "ami-0b6c6ebed2801a5cb"
    instance_type = "t2.medium"
    key_name = "k8_key_pair"
    count = 4
    vpc_security_group_ids = [data.aws_security_group.security_group_all_traffic.id]
}
data "aws_security_group" "security_group_all_traffic" {
  id = "sg-039aa3465338c4146"
}
