# scaling_sample

## 構築手順
1. global環境でterraform applyを実行
2. dev環境でterraform applyを実行
  インスタンス数を指定する場合 terraform apply -var "dev_target_size=2"
