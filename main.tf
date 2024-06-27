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

resource "aws_db_instance" "wordpress_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "wordpressdb"
  username             = "admin"
  password             = "mysecretpassword"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags = {
    Name = "WordPressDB"
  }
}
