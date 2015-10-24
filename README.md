# terminal_config

最初に流すもの

```shell
# とりあえず yum をアップデート
sudo yum -y update
# cloneするためにgitだけは入れておく
sudo yum -y install git

git clone --depth 1 https://github.com/dd0125/terminal_config.git
rm -fr terminal_config/.git
rm terminal_config/README.md
mv terminal_config/* ./

sh init_script/init_centos_standard.sh

```