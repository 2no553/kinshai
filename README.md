### version ?
- OS：Debian GNU/Linux 8 (jessie)
- node：v10.15.3
- npm：6.4.1
- gatsby-cli：2.4.15

### directory ?
```
.
├── README.md
├── app
│   ├── LICENSE
│   ├── README.md
│   ├── gatsby-config.js
│   ├── gatsby-node.js
│   ├── netlify.toml
│   ├── node_modules
│   ├── package-lock.json
│   ├── package.json
│   ├── public
│   ├── src
│   ├── travis.yml
│   └── yarn.lock
└── docker-compose.yml
```

### first create app ?
```
git clone https://github.com/GatsbyCentral/gatsby-v2-starter-lumen app
```

### how to start Docker ?
```
1. install Docker
https://www.docker.com/

2. start docker
git clone https://github.com/froide-sub-ninomiya/kinshai.git
cd kinshai/
docker-compose up -d --build

3. setting gatsby
docker-compose exec app sh
yarn global add gatsby-cli
yarn install

4. open start-page
gatsby develop --host=0.0.0.0
http://localhost:8000/
```

#### node_modulesのリソースを削除するときは以下のコマンドを実行
```
docker volume ls
docker volume rm kinshai_node_modules
```

### reference
- [Gatsby\.js Tutorial \| GatsbyJS](https://www.gatsbyjs.org/tutorial/)
- [npm\|yarnで怒られたエラー集まとめ。WARN\[deprecated,unmet dependency,peerDependencies,EPEERINVALID,engine\]ERR\!\[missing,invalid\],throw er; // Unhandled &\#39;error&\#39; eventの解決方法。\(2018/11/24更新\) \- Qiita](https://qiita.com/M-ISO/items/d693ac892549fc95c14c)
- [npm トラブルシューティング \- Qiita](https://qiita.com/hatai/items/ba6eadb758a667345b27)