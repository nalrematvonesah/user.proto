# user.proto

[![ci](https://github.com/nalrematvonesah/user.proto/actions/workflows/ci.yml/badge.svg)](https://github.com/nalrematvonesah/user.proto/actions/workflows/ci.yml)
[![Go Reference](https://pkg.go.dev/badge/github.com/nalrematvonesah/user.proto.svg)](https://pkg.go.dev/github.com/nalrematvonesah/user.proto)

Protocol Buffers definitions for the **User** service of the Smart Parking
System.

## Layout

```
proto/user/v1/user.proto         # service contract
gen/user/v1/                     # generated Go code
scripts/generate.sh              # regenerate Go code
buf.yaml                         # buf lint config
.github/workflows/ci.yml         # lint + generate + build on every push/PR
.github/workflows/release.yml    # GitHub Release on every v* tag
```

## Local development

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
export PATH="$PATH:$(go env GOPATH)/bin"

buf lint
./scripts/generate.sh
```

CI will refuse a PR where `gen/` is out of sync with `.proto`.

## Use from a Go service

```bash
go get github.com/nalrematvonesah/user.proto@latest
```

```go
import userv1 "github.com/nalrematvonesah/user.proto/gen/user/v1"
```

## Releasing

```bash
git tag v0.1.0
git push origin v0.1.0
```
