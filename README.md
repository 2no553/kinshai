### version ?
- OS：Debian GNU/Linux 8 (jessie)
- node：v10.15.3
- npm：6.4.1
- yarn：1.13.0
- gatsby-cli：2.4.15

### directory ?
```
.
├── LICENSE
├── README.md
├── docker-compose.yml
├── gatsby-config.js
├── gatsby-node.js
├── netlify.toml
├── node_modules
├── package.json
├── public
│   ├── index.html
│   ├── render-page.js.map
│   └── static
├── src
│   ├── assets
│   ├── components
│   ├── pages
│   └── templates
└── yarn.lock
```

### how to start Docker ?
```
1. install Docker
https://www.docker.com/

2. build docker
git clone https://github.com/froide-sub-ninomiya/kinshai.git
cd kinshai/
docker-compose up -d --build

3. setting gatsby
docker-comopose exec app sh
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
- [Netlify: All-in-one platform for automating modern web projects.](https://www.netlify.com/)
- [Continuous Integration and Delivery - CircleCI](https://circleci.com/)
- [How to ensure JavaScript code quality | DeepScan](https://deepscan.io/home/)
- [Zapier \| The easiest way to automate your work](https://zapier.com/)
