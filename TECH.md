
# 数据库迁移

安装

```bash
brew install golang-migrate
```

目录
```bash
apps/api/migrations
```

创建：
```bash
migrate create -ext sql -dir apps/api/migrations create_users
```

以后所有表都这样建，不要手动建表；
```bash
migrate  -path apps/api/migrations -database "$DATABASE_URL" up
```
