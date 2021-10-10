resource "aws_db_instance" "default" {
  allocated_storage         = 10
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  identifier                = "${var.env}-db-instance" # name for RDS instance
  name                      = "wordpress"              # name for the database, not for RDS instance
  username                  = "admin"
  password                  = random_password.password.result
  skip_final_snapshot       = var.snapshot #true #I do not need a snapshot
  final_snapshot_identifier = var.snapshot == true ? null : "${var.env}-snapshot"
  publicly_accessible       = var.env == "dev" ? true : false
}


// 1. env = dev
// skip_final_snapshot  = true
// final_snapshot_identifier = true == true ? null : "${var.env}-snapshot"

// 2. env = qa
//   skip_final_snapshot  = false 
//   final_snapshot_identifier = false == true ? null : "${var.env}-snapshot"
//   final_snapshot_identifier = qa-snapshot

// 3  env = prod
//   skip_final_snapshot  = false 
//   final_snapshot_identifier = false == true ? null : "${var.env}-snapshot"
//   final_snapshot_identifier = prod-snapshot


// When env is dev, publicly_accessible needs to be true
// When env is not dev, publicly_accessible needs to be false

// dev == dev ? true : false 
// > true

// qa == dev ? true : false
// > false