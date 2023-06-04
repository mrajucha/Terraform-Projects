# lifecycle rules -- how resources should be created/ deleted
# datasource block

resource "local_file" "pets" {
  filename        = "pets.txt"
  #content         = "my favourite pet is Dog!"
  content = data.local_file.pet.content
  file_permission = "0700"
  lifecycle {
   # prevent_destroy = true   
   create_before_destroy = true                  # lifecycle rule prevent destroy of resource

  }

  /*lifecycle {                               # Can be only one lifecycle rule block per resource.
    create_before_destroy = true              # create resource before destroy
  }

  lifecycle {
    ignore_changes = [ content ]              # ignore changes while apply for the mentioned attribute

  }
  */
}

data "local_file" "pet" {                   # Data block for datasource to only read resources not controlled by terraform
  filename = "dogs.txt"
  
}