# Packer

## ビルド方法

ansibleディレクトリ直下に移動し、以下のコマンドを実行。

```
$ packer build -var-file=packer/vars/scaling-sample-dev.json packer/packer.json
```
