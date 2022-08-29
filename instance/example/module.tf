module "aws_myinstance" {
  source="../"
  ami1="ami-0c95d38b24a19de18"
  ami2="ami-0c95d38b24a19de18"
  choice=false
}
module "aws_myiamusers" {
  source = "../../user"
  user_names=["jhansi","monisha","sanjay"]
}