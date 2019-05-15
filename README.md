# ora-easy-deploy


### WORKS ON (CENTOS REDHAT ORACLE) LINUX 7

国外主机
```
su - root 
yum -y install git 
git clone https://github.com/macleanliu/ora-easy-deploy
wget https://www.dropbox.com/s/8097ds292gabpk9/oracle-database-ee-19c-1.0-1.x86_64.rpm
wget https://www.dropbox.com/s/x14jlgnj062nef2/oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
yum -y localinstall oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
rpm -ivh oracle-database-ee-19c-1.0-1.x86_64.rpm
bash ora-easy-deploy/create_db.sh
```





国内主机
```

使用浏览器下载以下2个介质并上传到服务器目录

https://download.oracle.com/otn/linux/oracle19c/190000/oracle-database-ee-19c-1.0-1.x86_64.rpm
https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm


su - root 
yum -y install git 
git clone https://github.com/macleanliu/ora-easy-deploy
yum -y localinstall oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
rpm -ivh oracle-database-ee-19c-1.0-1.x86_64.rpm
bash ora-easy-deploy/create_db.sh
```
