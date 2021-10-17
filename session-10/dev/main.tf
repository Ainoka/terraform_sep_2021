module "ec2" {
  source        = "github.com/Ainoka/terraform_sep_2021/modules/ec2"
  ami           = "ami-03ab7423a204da002"
  instance_type = "t2.micro"
  env           = "dev"
  bucket_name   = module.s3.s3_name # Reference to output
}
module "s3" {
  source = "../../modules/s3"
  env    = "dev"
}
