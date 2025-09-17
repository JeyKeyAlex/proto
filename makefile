# Makefile в папке с proto файлами

.PHONY: gen-proto

gen-proto:
	protoc -I protobuff protobuff/sso/sso.proto --go_out=./gen/gogen --go_opt=paths=source_relative --go-grpc_out=./gen/gogen/ --go-grpc_opt=paths=source_relative