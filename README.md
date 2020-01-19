# terraform-external-urlparse

```
module "test" {
  source = "./.."

  url = "http://user:pass@www.example.com:8080/path?query1=1&query2=2#frag"
}
```

```
fragment = frag
host = www.example.com
password = pass
path = /path
port = 8080
query = query1=1&query2=2
scheme = http
user = user
```

NOTE: has ruby dependency - it would be possible to write it without it with regex like:

    regex("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", "https://terraform.io/docs/")
