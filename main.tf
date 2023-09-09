module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-01c207337455f056d"

  private_subnets = ["subnet-09567775f0c70b374", "subnet-06e1632299878e7ac"]
  public_subnets  = ["subnet-028ffbc29178cd92a", "subnet-0f789acfcc010432b"]
}