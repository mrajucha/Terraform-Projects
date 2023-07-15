provider "aws" {
  access_key = "",
  secret_key = "",
  region = "eu-central-1"
}


resource "aws_iam_user" "aws-user" {
   name = "Manoj"
   tags= {
    description= "AWS developer"
   }
}


resource "aws_iam_policy" "user-policy" {
  name = userpolicy
  description = "admin rights"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
  
}

resource "aws_iam_policy_attachment" "name" {
  users = aws_iam_user.aws-user.name
  policy_arn = aws_iam_policy.user-policy.arn


}