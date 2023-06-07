#terraform functions --> built in code blocks to perform specific task in .tf conffiguration
# numric, string, collection, typeconversion
# locals --> named value which can be used in code.
locals {                                          
  
list_length = length([13,10,5])
string_length = length("Manoj")
file_content = file("manoj.txt")

}

output "list-op" {
    value = local.list_length       #value attribute can be defined only once
  
}

output "string-op" {
    value = local.string_length
  
}

output "file-op" {
  value = local.file_content
}

