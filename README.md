# Terraform-Projects

- terraform state : sensitive information(ip address of Infra. db details) store in s3 secured place 
   - Do not manually modify the state file  
# Mandatory commands to execute any terraform project/script/IAC code
Note: the directory should have .tf file
1) teraform init --> Only once to initialise and to pull required plugins

2) terraform plan -->

3) terraform apply -->

4) terraform destroy --> only if you want to destroy the resource

# More terraform commands 
- terraform show -->  shows terraform state details(id. permmission,all the attributes of resource) output in humen readable format.(not work if errors)

- terraform validate --> to validate the terraform config syntax, shows the errors.

- terraform fmt --> to formate .tf config file to increase more readability.

- terraform output --> to print only output of config file.

- terraform refresh --> only refreshes state file, pull chenages done outside of local --> this command exist by default in terraform plan command . To exclude use "terraform plan refresh -false"

# lifecycle rules --> 
- prevent_destroy : to prevent destroy  first
- create_before_destroy : unlike usually this can create resource first before destroy
- ignore_changes : ignore changes for mentione attribute