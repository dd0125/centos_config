# 必要パッケージのインストール
sudo yum -y install openssl-devel readline-devel zlib-devel
sudo yum -y install libxml2 libxslt libxml2-devel libxslt-devel

# rbenv のインストール
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'source $HOME/settings/rails/.railsrc' >> ~/.zshrc

echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
#rbenv install 2.2.2
RUBY_BUILD_SKIP_MIRROR=1 rbenv install 2.2.2
rbenv global 2.2.2
rbenv rehash
which ruby
ruby -v

# gemrc の作成
echo 'install: --no-ri --no-rdoc' >> ~/.gemrc
echo 'update: --no-ri --no-rdoc' >> ~/.gemrc

# rails インストール時に nokogiri でエラーが出るため、先に入れておく
gem install nokogiri -- --use-system-libraries

# rails インストール
gem install rails --version="~> 4.2"
rails -v 


# therubyracer のインストール
sudo yum install -y gcc-c++
gem install therubyracer -v '0.12.2'

# mysql のインストール
sudo yum -y install mysql-server
sudo yum -y install mysql-devel
gem install mysql2 -v '0.3.17'
sudo service mysqld start
sudo chkconfig mysqld on


# sqlite のインストール
sudo yum -y install sqlite-devel
gem install sqlite3 -v '1.3.10'




# rmagick のインストール
sudo yum -y install ImageMagick
sudo yum -y install ImageMagick-devel
gem install rmagick -v '2.13.4'


＃nginx のインストール
rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
sudo yum -y install nginx
nginx -v

# 起動
sudo service nginx start
sudo chkconfig nginx on
chkconfig --list | grep nginx
# nginx          	0:off	1:off	2:on	3:on	4:on	5:on	6:off





# 作業用ディレクトリの作成
mkdir ~/workspace
mkdir ~/workspace/rails
cd ~/workspace/rails