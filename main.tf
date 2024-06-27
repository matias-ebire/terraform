provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "wordpress_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0123456789abcdef0"
  key_name      = "my-key-pair"

  tags = {
    Name = "WordPressInstance"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  username             = "foo"
  password             = "pavodghaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

  tags = {
    Name = "WordPressDB"
  }
}
