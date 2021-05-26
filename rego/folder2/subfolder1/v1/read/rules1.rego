package folder2.subfolder1.v1.read

default allow = false

allow {
  input.groups[_] == "customer_success"
}
