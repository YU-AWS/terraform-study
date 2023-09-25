# 環境設定

・homebrewインストール
https://brew.sh

・PATHの通し方と意味
https://blog.kikagaku.co.jp/path
https://amateur-engineer.com/mac-path-zsh/
お使いのmacがzshかbashかで設定が変わってくる

・terraformインストール
https://qiita.com/tanamoru/items/196004686a471a3b7e2f

・VScodeを日本語化する
https://www.javadrive.jp/vscode/install/index4.html

・AWSCLIインストール
https://docs.aws.amazon.com/ja_jp/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions

・Github組織アカウントの作成方法
https://www.ipentec.com/document/github-create-organization-account

・Gitインストール
https://qiita.com/suke_masa/items/4bed855628f7414293f8

# TERRAFORM関連

・CLI プロファイルの作成と設定
https://www.techpit.jp/courses/125/curriculums/128/sections/939/parts/3609

・AWS CLIでAWS Account IDを取得する。
https://qiita.com/kooohei/items/2a8a09e5f36bac614879

・terraformの基本
https://qiita.com/kimuni-i/items/6298ed10adc6ad450488

https://zenn.dev/himekoh/articles/202208191916

・Terraformへの変数の渡し方
https://capsulecloud.io/terraform-variable

。workspaceの作成
https://zenn.dev/naonao70/articles/9fdca68268898c

# VPC作成

VPC作成
サブネットを１つ作成
ルートテーブルを作成
インターネットゲートウェイ作成
ルートテーブルとインターネットゲートウェイの紐付け
https://kacfg.com/terraform-vpc-ec2/


# tfstateではなくS3で管理するためそのS3の作成
・StateファイルをS3へ移行
https://qiita.com/m-oka-system/items/bba8d32d57142a870ce5
https://qiita.com/sinshutu/items/7d3cc7438871c50ea63c

stateを格納するS3もterraformから作成する場合、バックエンドの設定を取り除き、
resource "aws_s3_bucket"でs3を作成する文言を先にアプライした後、バックエンドの設定をし、initする
→詳細は　エラー対処　の2番へ

# LFSを使ってGit容量削減
・Gitに大容量ファイルをプッシュするときには”Git LFS”を利用しよう
https://genzouw.com/entry/2022/02/09/112150/2934/

# エラー対処
1.terraform -versionで "Version could not be resolved" が発生する
https://capsulecloud.io/terraform-variable

2.Error: Failed to get existing workspaces: S3 bucket does not exist.が発生する
https://qiita.com/ryo-sato/items/2bc7438077c567c178e5

# gitignoreを使い公開しない情報、gitで管理しないもの、容量の大きいものを追加
ルートディレクトリに.gitignoreを作成しておく
$ cd {リポジトリパス}

$ touch .gitignore

.gitignoreにgit管理対象から外したいファイルを記載する
$ vi .gitignore

iを押下して(insert)モードにする
ファイル記載する
ファイルを記載し終えたら、esc→:wqで保存して終了する

