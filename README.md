# kinshai

### version ?
- OS：CentOS Linux 7
- node：v10.15.1
- npm：6.4.1
- gatsby-cli：2.4.9

### directory ?
```
.
├── README.md
├── lumen
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
└── vagrant
    ├── Vagrantfile
    └── provision.sh
```

### how to start vagrant ?
1. install Vagrant VirtualBox
- [Vagrant by HashiCorp](https://www.vagrantup.com/)
- [Oracle VM VirtualBox](https://www.virtualbox.org/)

2. clone source code  
※既にclone済みなので説明用に記載しているだけでこの手順は必要ない
git clone https://github.com/GatsbyCentral/gatsby-v2-starter-lumen app
   - [Starter Library \| GatsbyJS](https://www.gatsbyjs.org/starters/?v=2)  
   ※git clone `Starterのurl` `clone後のディレクトリ名`

3. start vagrant provision  
cd vagrant  
vagrant up  

4. vagrant ssh  
vagrant ssh -c "cd /vagrant; bash"  

```
※共有マウントに失敗する場合はインストール  
vagrant plugin install vagrant-vbguest  
vagrant reload  
```

5. open start-page  
cd app  
npm install  
npm audit fix  
npm run develop -- --host=0.0.0.0  
http://localhost:8000/

### reference

1. how to use Gatsby
- [Gatsby\.js Tutorial \| GatsbyJS](https://www.gatsbyjs.org/tutorial/)

2. how to use ssh from VM
- [ssh\-agentを使ってVagrant上のゲストOSからMac側の秘密鍵を使えるようにする \| Firegoby](https://firegoby.jp/archives/5694)

3. npm error
- [npm トラブルシューティング \- Qiita](https://qiita.com/hatai/items/ba6eadb758a667345b27)
- [npm\|yarnで怒られたエラー集まとめ。WARN\[deprecated,unmet dependency,peerDependencies,EPEERINVALID,engine\]ERR\!\[missing,invalid\],throw er; // Unhandled &\#39;error&\#39; eventの解決方法。\(2018/11/24更新\) \- Qiita](https://qiita.com/M-ISO/items/d693ac892549fc95c14c)
