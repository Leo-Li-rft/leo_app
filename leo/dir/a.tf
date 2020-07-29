provider "aws" {
  version = "~> 2.7"
  region  = "us-east-1"
}
data "aws_s3_bucket_object" "im_package" {
  bucket = "a205419-evmdev-git2s3-start"
  key    = "IM/cvm_im.jar"
}
resource "aws_lambda_function" "a205419-cvm-hello" {
  s3_bucket = data.aws_s3_bucket_object.im_package.bucket
  s3_key = data.aws_s3_bucket_object.im_package.key
  s3_object_version = data.aws_s3_bucket_object.im_package.version_id
  function_name = "a205419-cvm-hello"
  role          = "arn:aws:iam::608014515287:role/a205419-vmauto-dev"
  handler       = "com.refinitiv.cvm.HelloLambda::handleRequest"
  runtime = "java8"
  tags = var.default_tags
}
