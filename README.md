# S3-Bucket-Terraform-Deployment Code
s3.tf 

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
