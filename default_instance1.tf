provider "aws" {

region= "us-east-1"
access_key = ""
secret_key =""
}


resource "aws_instance" "os" {
ami ="ami-0d5eff06f840b45e9"
instance_type= "t2.micro"
tags= {  
Name = " My first TF OS11"
} 	

}
