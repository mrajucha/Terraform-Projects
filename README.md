# Terraform-Projects
 API as a code :: terraform's additional functionality. to convert script as API as code internally.
 
- terraform state : sensitive information(ip address of Infra. db details) store in s3 secured place 
   - Do not manually modify the state file  

# AWS Configure : Option to authenticate with access key and secret key
- In .aws folder the access and secret keys are stored usually.   
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

# terraform state commands
- terraform state list --> list all resources in config file
- terraform state show <resourcetype.resource-name> --> show details about mentioned resources
- terraform state rm <resourcename> -- remove from state file (not from real world infrastructure)

# Ideal terraform flow
User --> Jenkins build --> github(terraform code) --> AWS
                           |
                  Remote backedn(S3) state file --> dynamodb(state lock)
![image](https://github.com/mrajucha/Terraform-Projects/assets/103336800/93978136-094d-4f5e-801f-02daed4301c2)                  

# lifecycle rules --> 
- prevent_destroy : to prevent destroy  first
- create_before_destroy : unlike usually this can create resource first before destroy
- ignore_changes : ignore changes for mentione attribute

# Terraform debugging and logs 
- export TF_LOG=ERROR --> to set log level error (export works in only unix for other use set)
- export TF_LOG_PATH=/tmp/name.log --> path to store the logs.
- $Env:TF_LOG="INFO"
- $Env:TF_LOG_PATH="<copy path of folder where to save logs>"

# Terraform Modules







