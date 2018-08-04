FROM centos
RUN cat > /etc/yum.repos.d/nginx.repo <<EOF \
[nginx] \
name=nginx repo \
baseurl=http://nginx.org/packages/centos/7/\$basearch/ \
gpgcheck=0 \
enabled=1 \
EOF \
&& yum -y install nginx \
&& echo '<h1>Hello, Docker!</h1>' > /usr/share/nginx/html/index.html
# 包装一层启动命令
CMD ["nginx", "-g", "daemon off;"]