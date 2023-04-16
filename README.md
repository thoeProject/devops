# Deploying a Web Server in Azure

We will create infrastructure as code in the form of a Terraform template to deploy a website with a load balancer. 

The project will consist of the following main steps:
- Creating a Packer template
- Creating a Terraform template
- Deploying the infrastructure

# **Image Packer**</font>
- Our project name will be `devops` and we will create file with name `server.json`
- Use command to create image for virtual machine packer build: `packer build devops/server.json`
![packer_build](https://user-images.githubusercontent.com/63529255/232326707-9474aff5-08ab-43b5-87dd-6fe034de1116.png)

- After create successfully, you can view image list with command  `az image list`, remember to login on Azure in advance with command `az login`

![az_image_list](https://user-images.githubusercontent.com/63529255/232326521-00108dd2-0b85-436c-882c-f946580182b6.png)

# **Terraform Template**
- We will have 2 file `.tf`
+ main.tf is to declare the resources
+ vars.tf is to declare variables
- Get started with `terraform init`
![terraform_init](https://user-images.githubusercontent.com/63529255/232326728-f7a57683-2366-4116-945b-181be40bac46.png)

- Create solution plan `terraform plan -out solutions.plan`
![terraform_plan](https://user-images.githubusercontent.com/63529255/232326733-43dbe649-4afd-4068-b750-fc4acabdd84c.png)

- Deploy terraform infrastructure `terraform apply`
![terraform_apply](https://user-images.githubusercontent.com/63529255/232326736-d611117d-2e0c-4117-b308-92d06b27b3d5.png)

- After done this step, login on your Azure and see result:
![output](https://user-images.githubusercontent.com/63529255/232326793-33e162f3-5717-4b18-829a-b6a07ffd0856.png)

# Customize vars.tf
This file contains all the variables used inside file `vars.tf`. If you want to update any variables, you can update into this file.
For example: If you want to deploy on other servers, you need to change values default inside the file variable "server_names"{ type = list default = ["<Server_1>","Server_2"] }
