# Claude Code Devcontainer Template

![skill icons](https://skillicons.dev/icons?i=docker,ts,bun,nodejs,nextjs)

Claude Codeを用いたAI駆動開発に最適化したモノレポテンプレートです。  
追加で [Biome](https://biomejs.dev/) と [LeftHook](https://lefthook.dev/) を含みます。

## 🚀 起動方法

- `VSCode` にて [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) 拡張機能をインストール

- Dev Container の起動  
`shift + ctrl + p` で `Dev Containers: Rebuild and Reopen in Container` を実行

- 後は勝手に開発環境とClaude Codeが立ち上がります。  
初回のみ認証が求められます。

## ✨ 追加の設定

### Issueの内容からPRを作成してほしい

`.devcontainer/.env` の `GH_TOKEN` を入力すればClaude CodeがGithub CLIを利用可能になります。  
`.claude/agents` にGithub用のサブエージェントを適当に作成していますので、良しなにカスタムしてください。

### コミット前にコードをチェックしたい

[LeftHook](https://lefthook.dev/) でpre-commitのフックを定義済みです。  
現在はコミット前に `bun run lint` と `bun test` が実行されるように設定しています。  
詳しくは `lefthook.yml` を参照ください。  
コミットメッセージのリントがしたい方は [こちら](https://lefthook.dev/examples/commitlint.html) をどうぞ

## 🚨 その他、留意すべきこと

- Claude Codeで何度も認証を求められないように認証ファイル等を `.ignore-me` ディレクトリ配下にマウントしています。  
このディレクトリは `.gitignore` で無視するように設定していますが、**絶対にGit管理に含めないでください。**

- `.claude` ディレクトリはプロジェクト毎のClaude Codeの設定です。  
これはGit管理に含めても大丈夫です。

- パッケージマネージャは `npm`, `bun`, `yarn` が入っています。  
私は `bun` 推しですが、好きなものを使ってください。
