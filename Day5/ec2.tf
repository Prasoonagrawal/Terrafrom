resource "aws_instance" "webos1" {
ami ="ami-0d5eff06f840b45e9"
instance_type= "t2.micro"
security_groups = ["Allow"]
key_name= "Terraform_key"

tags ={
Name= "Webos1"
}

}