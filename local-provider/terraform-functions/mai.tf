#terraform functions --> built in code blocks to perform specific task in .tf conffiguration
# numric, string, collection, typeconversion
# locals --> named value which can be used in code.
locals {                                          
max_num = max(12,123,23,5,-5)  
min_num = min(12,123,23,5,-5)
list_length = length([13,10,5])
string_length = length("Manoj")
file_content = file("manoj.txt")        
list_to_set = toset([13,10,5,5])     # sort and remove duplicates   
num_to_string = tostring(123)        # convert into string "123"

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


output "toset" {
  value = local.list_to_set
}

output "tostring" {
  value = local.num_to_string
}
