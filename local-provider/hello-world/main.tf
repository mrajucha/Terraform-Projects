# local provider and its attributes
# varibales
# output
# variable refresnce


resource "local_file" "hello-world" {                       # manage local resources files 
  filename = "hello.txt"                                    #path/name of the file name to be created
  #content = "Hello! this is my first terraform project"     # Content inside the file mentioned above
  content = var.content
  directory_permission = "0700"
  file_permission = "0700"
  #sensitive_content = "My key is 7040"

}

resource "random_password" "passwords" {
  length = 5
  special = true
  
}

output "hello-world-op" {                         #to print the output into console
    value = local_file.hello-world.content
}

output "passwords-op" {

  value = random_password.passwords.result
  sensitive = true
}
#variable "content" {
 # default = "Hello! this is my first terraform project. The password length is ${random_password.passwords.length}" 
#}