resource "aws_sns_topic" "topic" {
  name              = var.sns_topic_name
  kms_master_key_id = aws_kms_key.topic_key.id
  tags              = var.tags
}

resource "aws_sns_topic_policy" "policy" {
  arn    = aws_sns_topic.topic.arn
  policy = <<POLICY
  {
      "Version":"2012-10-17",
      "Statement":[{
          "Effect": "Allow",
          "Principal": {"Service":"s3.amazonaws.com"},
          "Action": "SNS:Publish",
          "Resource":  "${aws_sns_topic.topic.arn}",
          "Condition":{
              "ArnLike":{"aws:SourceArn":"${aws_s3_bucket.bucket.arn}"}
          }
      }]
  }
  POLICY
}