package folder1

default allow = false

allow {
  input.user.groups[_] == "folder1_access"
}
