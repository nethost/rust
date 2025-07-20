group "default" {
  targets = ["latest"]
}

target "latest" {
  context    = "."
  dockerfile = "Dockerfile"
  platforms  = ["linux/amd64", "linux/arm64/v8", "linux/s390x"]
  tags = [
    "registry.cn-shanghai.aliyuncs.com/nethost/rust:1.88",
    "docker.io/nethost/rust:1.88",
    "quay.io/nethost/rust:1.88",
    "ghcr.io/nethost/rust:1.88",
  ]
  push = true
}