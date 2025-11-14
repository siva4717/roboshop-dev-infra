variable "sg_names" {
  default = [

    #databases
    "mongodb",
    "mysql",
    "rabbitmq",
    "redis",

    #backend
    "catalogue",
    "shipping",
    "payment",
    "user",
    "cart",

    #frontend
    "frontend",

    #bastion
    "bastion",

    #forntend-load-balancer
    "frontend_alb",

    #backend-load-balancer
    "backend_alb",


    "open_vpn"
  ]
}

variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}