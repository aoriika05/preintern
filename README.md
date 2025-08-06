# Laravelアプリケーション(仮)
## 開発環境
開発マシン: Windows 11  
本番環境: Almalinux 9.4 64bit  
エディタ: PhpStorm
## 構築手順
1. リポジトリをclone
2. docker-compose.yml と .envをscp等で転送
3. docker-compose.yml と .envのDBパスワードを任意に設定

```bash
docker-compose up -d
mkdir ./docker/nginx/logs
mkdir ./docker/mysql
docker compose exec preintern-app bash
```
最後のコマンドでappコンテナに入るので以下を実行
```bash
chmod -R guo+w storage
php artisan storage:link
```

## ref
環境構築: https://qiita.com/hitotch/items/2e816bc1423d00562dc2  
Laravel学習: https://www.shuwasystem.co.jp/book/9784798075273.html  
