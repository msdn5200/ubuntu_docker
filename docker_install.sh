# 以Ubuntu为例
# Step 1 移除之前docker版本并更新更新 apt 包索引
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update


# Step 2 安装 apt 依赖包，用于通过HTTPS来获取仓库

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common




# Step 3 添加 Docker 的官方 GPG 密钥

curl -fsSL httpsmirrors.aliyun.comdocker-celinuxubuntugpg  sudo apt-key add -




# Step 4 设置docker稳定版仓库，这里使用了阿里云仓库

sudo add-apt-repository deb [arch=amd64] httpsmirrors.aliyun.comdocker-celinuxubuntu $(lsb_release -cs) stable

sudo apt-get update




# Step 5 安装免费的docker Community版本docker-ce

sudo apt-get -y install docker-ce

# sudo apt-get install -y docker-ce=VERSION #该命令可以选择docker-ce版本




# Step 6 查看docker版本及运行状态

sudo docker -v

sudo systemctl status docker


# Step 7：本步非必需。使用阿里云设置Docker镜像加速，注意下面链接请使用阿里云给自己的URL

sudo mkdir -p etcdocker

sudo tee etcdockerdaemon.json -'EOF'

{  registry-mirrors [httpsua3456xxx.mirror.aliyuncs.com] }

EOF

sudo systemctl daemon-reload

sudo systemctl restart docker

