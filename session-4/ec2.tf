resource "aws_instance" "my_ec2" {
  count                  = var.number_of_ec2
  ami                    = data.aws_ami.amazon_linux_2.image_id  ### when you reference to Data Source     # you can use variables var.ami                       ###data.aws_ami.ubuntu.id ### = reference doesn't take "" ### Reference to Input Varisble
  instance_type          = var.instance_type                     ### Reference to Input Variable
  vpc_security_group_ids = [aws_security_group.my_sg.id]         ### when youn reference to recoure = first-label.second-lable.attribute if you have multiple SG (groups) make a list with [], [], ### Referend to Resource
  user_data              = data.template_file.user_data.rendered ### file("userdata.sh")  ### we using function "file read dirrectly from the file"
  ### data source - data.template_file.user_data.rended
  tags = {
    Name  = "${var.env}-project1" ### when you hardcode - project1 use calling a variables "${var.env}-project1" *when you need to change/add name on the project
    Name2 = format("%s-projest2", var.env) ## you can use Format Function
  }
}

### Any programming, String goes with ""
### Whenever you hard code 
### ami-"-----------" 
### bootstrap = happen just ones
### userdata = runs the script when your machine gets bootstrapped
### [] = list
### "" = hard coded value, string
### () = functions
### var. = variables
### aws_instance.ec2.id = reference to resource 

## var.env = calling a variables
## -project = hardcoding

## 1. Make your code functional
## 2. Make it reusable
## 3. Make is beatiful