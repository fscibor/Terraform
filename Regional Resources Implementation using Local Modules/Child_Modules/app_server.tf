resource "aws_instance" "app_server" {
  ami = var.ami
  instance_type =  "t2.micro"
  tags = {
    Name = "${var.app_region}-app-server"
  }
  depends_on = [ aws_dynamodb_table.production_db, aws_s3_bucket.production_data ]

}