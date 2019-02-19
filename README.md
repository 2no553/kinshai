# kinshai

### version ?
- OS：Debian GNU/Linux 8 (jessie)
- node：v10.15.1
- npm：6.4.1
- gatsby-cli：2.4.9

### directory ?
```
.
├── Dockerfile
├── README.md
├── app
│   ├── LICENSE
│   ├── README.md
│   ├── gatsby-config.js
│   ├── gatsby-node.js
│   ├── netlify.toml
│   ├── node_modules
│   ├── package-lock.json
│   ├── package.json
│   ├── public
│   ├── src
│   ├── travis.yml
│   └── yarn.lock
└── docker-compose.yml
```

### how to start Docker ?
```
1. install Docker
https://www.docker.com/

2. start docker
docker-compose up --d --build

3. in container
docker-compose exec app sh

4. setting gatsby
npm install gatsby-cli
npm install
npm audit fix

5. open start-page
npm run develop -- --host=0.0.0.0
http://localhost:8000/
```

#### node_modulesはVolumeTrickで登録
```
1. list volume
docker volume ls

2. delete volume
※docker-compose downだけではvolumeは削除されない
docker-compose down -v
```

### reference

1. how to use Gatsby
- [Gatsby\.js Tutorial \| GatsbyJS](https://www.gatsbyjs.org/tutorial/)

2. npm error
- [npm\|yarnで怒られたエラー集まとめ。WARN\[deprecated,unmet dependency,peerDependencies,EPEERINVALID,engine\]ERR\!\[missing,invalid\],throw er; // Unhandled &\#39;error&\#39; eventの解決方法。\(2018/11/24更新\) \- Qiita](https://qiita.com/M-ISO/items/d693ac892549fc95c14c)
- [npm トラブルシューティング \- Qiita](https://qiita.com/hatai/items/ba6eadb758a667345b27)