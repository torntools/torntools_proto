PROTO_ROOT?=./torntools
PROTO_BUILD_DIR?=build/go
proto:
	echo "Create directory ${PROTO_BUILD_DIR} and build golang proto"
	mkdir -p ${PROTO_BUILD_DIR}
	protoc -I=${PROTO_ROOT} --go_out=${PROTO_BUILD_DIR}  torntools/bookie/bookie.proto
	protoc -I=${PROTO_ROOT} --go_out=${PROTO_BUILD_DIR} torntools/service/server.proto

