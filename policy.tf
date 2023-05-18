# Ubder-dev policy
resource "aws_iam_policy" "dev" {
  name        = "Uber-dev-policy"
  description = "Uber-dev-policy"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "StartStopIfTags",
        "Effect" : "Allow",
        "Action" : [
          "ec2:StartInstances",
          "ec2:StopInstances"
        ],
        "Resource" : "arn:aws:ec2:ap-south-1:945577359662:instance/*",
        "Condition" : {
          "StringEquals" : {
            "aws:ResourceTag/Project" : "Uber",
            "aws:ResourceTag/Env" : "Dev"
          }
        }
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "ec2:DescribeInstances",
          "ec2:DescribeImages",
          "ec2:DescribeTags"
        ],
        "Resource" : "*"
      }
    ]
  })
}

#uber-prod policy

resource "aws_iam_policy" "prod" {
  name        = "Uber-prod-policy"
  description = "Uber-prod-policy"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "StartStopIfTags",
        "Effect" : "Allow",
        "Action" : [
          "ec2:StartInstances",
          "ec2:StopInstances"
        ],
        "Resource" : "arn:aws:ec2:ap-south-1:945577359662:instance/*",
        "Condition" : {
          "StringEquals" : {
            "aws:ResourceTag/Project" : "Uber",
            "aws:ResourceTag/Env" : "Prod"
          }
        }
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "ec2:DescribeInstances",
          "ec2:DescribeImages",
          "ec2:DescribeTags"
        ],
        "Resource" : "*"
      }
    ]
  })
}
