
#!/bin/bash

git clone https://github.com/flatpak/flatpak-builder-tools .cache/flatpak-builder-tools
pipx install .cache/flatpak-builder-tools/node

python3 ./update.py fluent-reader-git.json --ref $1 --generator-arg=--electron-node-headers --generator-arg=-r --generator-arg=npm --generator-arg=package-lock.json

pipx uninstall flatpak-node-generator

rm -rf ./.cache