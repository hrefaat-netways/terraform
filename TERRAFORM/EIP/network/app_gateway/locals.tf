locals {
  env = yamldecode(file("./locals.${terraform.workspace}.yaml"))
 }