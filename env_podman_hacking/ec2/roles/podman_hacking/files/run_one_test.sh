MY_TEST="test/e2e/manifest_test.go"

export PATH=`pwd`/bin:`pwd`/hack:${PATH}
REMOTETAGS="remote exclude_graphdriver_btrfs btrfs_noversion exclude_graphdriver_devicemapper containers_image_openpgp"

GOPATH=~/go go test --tags "$REMOTETAGS" -v test/e2e/libpod_suite_remote_test.go test/e2e/common_test.go test/e2e/config.go test/e2e/config_amd64.go test/e2e/manifest_test.go
#GOPATH=~/go go test -v test/e2e/libpod_suite_test.go test/e2e/common_test.go test/e2e/config.go test/e2e/config_amd64.go test/e2e/manifest_test.go

