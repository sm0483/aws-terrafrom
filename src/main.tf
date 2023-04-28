module "vpc_module" {
  source = "./modules/vpc"
}

module "subnet_module" {
  source = "./modules/subnets"
  vpc_id = module.vpc_module.vpc_id

}


module "internet_gateway_module" {
  source = "./modules/internet-gateway"
  vpc_id = module.vpc_module.vpc_id
}


module "nat_gateway_module" {
  source     = "./modules/nat-gateway"
  subnet_ids = module.subnet_module.subnet_ids

}
module "route_tables" {
  source              = "./modules/route-table"
  subnet_ids          = module.subnet_module.subnet_ids
  vpc_id              = module.vpc_module.vpc_id
  internet_gateway_id = module.internet_gateway_module.internet_gateway_id
  nat_id              = module.nat_gateway_module.nat_id
}




