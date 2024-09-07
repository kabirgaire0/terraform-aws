This a Terraform with AWS repo

# Setup, Install Terraform [On Debian]

Source : https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
[AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication)
[providers](https://developer.hashicorp.com/terraform/language/providers)


Install Prerequisites
```
$ sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

Install the HashiCorp GPG key.
```
$ wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```

Verify the key's fingerprint.
```
$ gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```
The gpg command will report the key fingerprint:
```
/usr/share/keyrings/hashicorp-archive-keyring.gpg
-------------------------------------------------
pub   rsa4096 XXXX-XX-XX [SC]
AAAA AAAA AAAA AAAA
uid           [ unknown] HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>
sub   rsa4096 XXXX-XX-XX [E]
```

Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.
```
$ echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

Download the package information from HashiCorp.
```
$ sudo apt update
```

Install Terraform from the new repository.
```
$ sudo apt-get install terraform
```
Verify the installation
```
terraform -help
```

Install autocomplete package
```
terraform -install-autocomplete
```

# HOW TO USE
Initialize config
```
terraform init
```
Apply config
```
terraform apply
```
Delete resources
```
terraform destroy
```
Format config
```
terraform fmt
```
Validate config
```
terraform validate
```
Inspect the configuration
```
terraform show
```
Manually Manage State
```
terraform state list
```

Variables in terraform config
```
terraform apply -var 'instance_name=myInstanceName'
```

# Terraform cloud : Remote Backend

Login
```
terraform login
```
Delete local state file
```
rm terraform.tfstate
```
