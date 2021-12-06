# root main
module "networking" {
  source = "./networking"
  vpcCidr = "10.0.0.0/16"
  PubsubCidr = "10.0.1.0/24"
  PrivatesubCidr = "10.0.2.0/24"
}
module "compute" {
  source = "./compute"
  subnet_pub = module.networking.privatesubnet
}