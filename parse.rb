require "uri"
require "json"

uri = URI.parse ARGV[0]

result = {
  scheme: uri.scheme,
  user: uri.user,
  password: uri.password,
  host: uri.host,
  port: uri.port.to_s,
  path: uri.path,
  query: uri.query,
  fragment: uri.fragment
}

puts result.to_json
