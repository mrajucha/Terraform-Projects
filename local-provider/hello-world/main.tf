resource "local_file" "hello-World" { //
  filename = "hello.txt"                                    //path/name of the file name to be created
  content = "Hello! this is my first terraform project"     // Content inside the file mentioned above
}