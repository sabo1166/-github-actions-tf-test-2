module "network" {
  source      = "../../modules/network"
  vpc_cidr    = "10.0.0.0/24"
  subnet_cidr = "10.0.0.0/24"

}

module "compute" {
  source        = "../../modules/compute"
  ami           = "ami-0d27e0fb3bac4d724"
  instance_type = "t2.micro"
  subnet_id     = module.network.subnet_id
}
