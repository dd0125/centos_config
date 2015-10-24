# とりあえず yum をアップデート
sudo yum update

# 基本的に必要なパッケージをインストール
sudo yum -y install vim
sudo yum -y install git
sudo yum -y install zsh
sudo yum -y install wget
sudo yum -y install man
sudo yum -y install make
sudo yum -y install jwhois

# configファイル取得
git clone --depth 1 https://github.com/dd0125/terminal_config.git ./
rm -fr ./.git
rm README.md