# tfstate를 저장할 backend 설정
terraform {
  backend "s3" {
    bucket  = "hsy-tfstate"
    key     = "terraform.state"
    region  = "ap-northeast-2"
    profile = "fastc"
  }
}