module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0c13c1427aeacdf98"

  private_subnets = ["subnet-0c8e4f6049fa6a2fd", "subnet-0324cd40adfaede1c"]
  public_subnets  = ["subnet-0a2f1188b8c7da5eb", "subnet-055a019141658b58c"]
}