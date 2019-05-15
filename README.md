# ora-easy-deploy


### WORKS ON (CENTOS REDHAT ORACLE) LINUX 7

国外主机
```
su - root 
wget https://www.dropbox.com/s/8097ds292gabpk9/oracle-database-ee-19c-1.0-1.x86_64.rpm
wget https://www.dropbox.com/s/x14jlgnj062nef2/oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
yum -y localinstall oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
rpm -ivh oracle-database-ee-19c-1.0-1.x86_64.rpm
```





国内主机
```

从ONEDRIVE下载介质并上传到服务器目录

https://1drv.ms/u/s!ApIdZTzqljlagYFm5MnX029ZHM-YUQ
https://1drv.ms/u/s!ApIdZTzqljlagYFoZ7HINlbsRvwR2w

su - root 

yum -y localinstall oracle-database-preinstall-19c-1.0-1.el7.x86_64.rpm
rpm -ivh oracle-database-ee-19c-1.0-1.x86_64.rpm
```
