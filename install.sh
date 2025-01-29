#!/bin/bash

# If no version is specified, fetch the latest version from GitHub Releases.
if [ -z "$1" ]; then
    VERSION=$(curl -s https://api.github.com/repos/ry0y4n/my-cli-tool/releases/latest | grep -o '"tag_name": *"[^"]*"' | sed 's/"tag_name": *"//' | sed 's/"//')
    if [ -z "$VERSION" ]; then
        echo "Failed to fetch the latest version."
        exit 1
    fi
else
    VERSION=$1
fi

OS=$(uname -s)
ARCH=$(uname -m)
URL="https://github.com/ry0y4n/my-cli-tool/releases/download/${VERSION}/my-cli-tool_${OS}_${ARCH}.tar.gz"

echo "Start to install. VERSION=$VERSION, OS=$OS, ARCH=$ARCH"
echo "Download URL=$URL"

TMP_DIR=$(mktemp -d)
curl -L $URL -o $TMP_DIR/my-cli-tool.tar.gz
tar -xzvf $TMP_DIR/my-cli-tool.tar.gz -C $TMP_DIR
sudo mv $TMP_DIR/my-cli-tool /usr/local/bin/my-cli-tool
sudo chmod +x /usr/local/bin/my-cli-tool

rm -rf $TMP_DIR

if [ -f "/usr/local/bin/my-cli-tool" ]; then
  echo "[SUCCESS] my-cli-tool $VERSION installed to /usr/local/bin"
else
  echo "[FAIL] Installation failed."
fi