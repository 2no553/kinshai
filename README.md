## how to start Docker ?
```
1. build container
git clone https://github.com/froide-sub-ninomiya/kinshai.git
cd kinshai/
docker-compose up -d --build

2. install gatsbyjs
docker-compose exec app sh
yarn global add gatsby-cli
yarn install

3. start page
gatsby develop --host=0.0.0.0
http://localhost:8000/
```

### node_modulesのリソースを削除するときは以下のコマンドを実行
```
docker volume ls
docker volume rm kinshai_node_modules
```