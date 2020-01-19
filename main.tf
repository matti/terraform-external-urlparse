variable "url" {}

data "external" "parse" {
  program = ["ruby", "${path.module}/parse.rb", chomp(var.url)]
}

output "scheme" {
  value = data.external.parse.result.scheme
}

output "user" {
  value = data.external.parse.result.user
}

output "password" {
  value = data.external.parse.result.password
}

output "host" {
  value = data.external.parse.result.host
}

output "port" {
  value = data.external.parse.result.port
}

output "path" {
  value = data.external.parse.result.path
}

output "query" {
  value = data.external.parse.result.query
}

output "fragment" {
  value = data.external.parse.result.fragment
}
