module "test" {
  source = "./.."

  url = "http://user:pass@www.example.com:8080/path?query1=1&query2=2#frag"
}

output "scheme" {
  value = module.test.scheme
}

output "user" {
  value = module.test.user
}

output "password" {
  value = module.test.password
}

output "host" {
  value = module.test.host
}

output "port" {
  value = module.test.port
}

output "path" {
  value = module.test.path
}

output "query" {
  value = module.test.query
}

output "fragment" {
  value = module.test.fragment
}


module "test_chomp" {
  source = "./.."

  url = "http://google.com\n"
}
