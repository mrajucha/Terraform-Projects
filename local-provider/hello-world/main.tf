resource "local_file" "hello-World" {
  filename = "hello.txt"
  content = "Hello! this is my first terraform project"
}