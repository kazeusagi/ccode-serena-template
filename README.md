# Claude Code with Serena on Devcontainer Template

Claude Code と Serena MCP を利用するための最小設定を含むテンプレートです。

## 🚀 起動方法

- `VSCode` にて [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) 拡張機能をインストール

- Dev Container の起動  
`shift + ctrl + p` で `Dev Containers: Rebuild and Reopen in Container` を実行

- 後は勝手に開発環境と Claude Code が立ち上がります。  
初回のみ認証が求められます。

## ✨ 追加の設定

### Claude Code から Github CLI を叩きたい

以下の手順で Claude Code から Github CLI を叩けるようになります。

- `.devcontainer/.env` の `GH_TOKEN` を入力
- `.devcontainer/devcontainer.json` の `features` 内でコメントアウトされている Github CLI 用フューチャーのコメントを外す

### 起動時に Claude Code を自動で立ち上げたい

拡張機能 [Restore Terminals](https://marketplace.visualstudio.com/items?itemName=EthanSK.restore-terminals) が使えます。  
`vscode`

## 🚨 その他、留意すべきこと

- Claude Codeで何度も認証を求められないように認証ファイル等を `.ignore-me` ディレクトリ配下にマウントしています。  
このディレクトリは `.gitignore` で無視するように設定していますが、**絶対にGit管理に含めないでください。**
