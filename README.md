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
├── app
│   ├── LICENSE
│   ├── README.md
│   ├── gatsby-browser.js
│   ├── gatsby-config.js
│   ├── gatsby-node.js
│   ├── gatsby-ssr.js
│   ├── node_modules
│   ├── package-lock.json
│   ├── package.json
│   ├── public
│   ├── src
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
git clone https://github.com/gatsbyjs/gatsby-starter-default.git app
   - [Starter Library \| GatsbyJS](https://www.gatsbyjs.org/starters/?v=2)  
※git clone `Starterのurl` `clone後のディレクトリ名`

1. start vagrant provision  
cd vagrant  
vagrant up  

4. open start-page  
vagrant reload
vagrant ssh -c "cd /vagrant/app; bash"  
npm run develop -- --host=0.0.0.0  
http://localhost:8000/

### reference

1. how to use Gatsby
- [Gatsby\.js Tutorial \| GatsbyJS](https://www.gatsbyjs.org/tutorial/)

2. how to use ssh from VM
- [ssh\-agentを使ってVagrant上のゲストOSからMac側の秘密鍵を使えるようにする \| Firegoby](https://firegoby.jp/archives/5694)