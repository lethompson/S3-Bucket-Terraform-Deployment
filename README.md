# Installation steps for Terraform on Linux Ubuntu
#### Download the terraform version from HashiCorp
```
> sudo wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
```
#### Install unzip if you don't have unzip command 
```
> sudo apt-get install -y unzip
```
#### Unzip the file and include the terraform file in your local bin directory in Linux
```
> sudo unzip terraform_0.11.14_linux_amd64.zip -d /usr/local/bin/
```
#### To check if terraform is installed and what version of terraform you have
```
> which terraform
> terraform --version
```

# S3-Bucket-Terraform-Deployment Code
## Create a file called s3.tf using vim or text editor
```
> vim s3.tf 
```

## Provide the following code in the s3.tf file and save it
```
provider "aws" {
  region = "us-east-1"
  access_key = "<ACCESS KEY>"
  secret_key = "<SECRET KEY>"
}


resource "aws_s3_bucket" "b" {
  bucket = "test-example-s3-terraform-lt"
  acl    = "private"

  tags {
    Name	= "My bucket Demo - Terraform Deployment"
    Environment = "Dev-Env"
  }
}
```

### Terraform Deployment Setups:
#### The terraform init command is used to initialize a working directory containing Terraform configuration files
```
> terraform init
```
#### The terraform plan command is used to create an execution plan
```
> terraform plan
```
#### The terraform apply command is used to apply the changes required to reach the desired state of the configuration
```
> terraform apply
```

You can see the Amazon S3 bucket created from the Terraform deployment in AWS cloud
![S3 Bucket in US-EAST-1 Region](https://github.com/lethompson/S3-Bucket-Terraform-Deployment/blob/master/Terraform_S3_bucket_Demo.PNG)
