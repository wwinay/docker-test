

git clone https://github.com/wwinay/httpd_docker.git
cd httpd_docker

master_commit=`git rev-parse master`
echo "$master_commit" > master_commit.txt

sed '$i$master_commit' Dockerfile
#docker build -t master_branch:1 .

