module "vpc" {
    source = "./vpc"
   # vpc_id = module.vpc.vpc_id
}

module "ec2" {
    source = "./ec2"
    depends_on  = [module.vpc]
  # vpc_id = module.vpc.vpc_id
  # public_subnet_id = module.vpc.public_subnet_id
}
  