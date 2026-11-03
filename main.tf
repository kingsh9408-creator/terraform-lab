
terraform {

  cloud {

    organization = "sky1234-2537023"



    workspaces {

      name = "cloud-lab"

    }

  }



  required_providers {

    random = {

      source  = "hashicorp/random"

      version = "~> 3.6"

    }

  }

}



resource "random_pet" "server" {

  length = 2

}



output "pet_name" {

  value = random_pet.server.id

}

