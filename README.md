# scaling_sample

## 構築手順
1. global環境で`terraform apply`を実行  
  
2. dev環境で`terraform apply`を実行  
  インスタンス数を指定する場合 `terraform apply -var "dev_target_size=2"`  
  
3. Packerでイメージビルド  
ansibleディレクトリ直下に移動し、以下のコマンドを実行。  

```
$ packer build -var-file=packer/vars/scaling-sample-dev.json packer/packer.json
```
