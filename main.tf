module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source          = "./modules/eks-cluster"
  cluster_name    = "fast-cluster"
  cluster_version = "1.24"
  vpc_id          = "vpc-0d1220c8289d60d3d"

  private_subnets = ["subnet-0c87314552d75bd88", "subnet-05e9d51fd644b0bf6"]
  public_subnets  = ["subnet-0b0b6cd970b9fc17b", "subnet-0d91bcf99ec9d602e"]
}