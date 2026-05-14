#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

protoc \
  --proto_path=proto \
  --go_out=. \
  --go_opt=module=github.com/nalrematvonesah/user.proto \
  --go-grpc_out=. \
  --go-grpc_opt=module=github.com/nalrematvonesah/user.proto \
  proto/user/v1/user.proto

echo "generated user.proto code"
