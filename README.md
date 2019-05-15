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


### 安装完成后
```
#设置ORACLE OS账户密码
su - root
passwd oracle                     
su - oracle
sql

[oracle@vultr ~]$ sql

SQL*Plus: Release 19.0.0.0.0 - Production on Wed May 15 07:09:52 2019
Version 19.3.0.0.0

Copyright (c) 1982, 2019, Oracle.  All rights reserved.


Connected to:
Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
Version 19.3.0.0.0

SQL> 







```


### 关闭部分19c特性
```
sql


alter system set "_optimizer_aggr_groupby_elim"=false;
alter system set "_drop_stat_segment"=1;
alter system set "_common_data_view_enabled"=false;
alter system set optimizer_adaptive_features=false;
alter system set "_optimizer_dsdir_usage_control"=0; 
alter system set "_enable_automatic_sqltune"=false scope=both; 
alter system set "_serial_direct_read"=false;
alter system set "_nlj_batching_enabled" = 0; 
alter system set "_optimizer_undo_cost_change" = '10.2.0.4';
alter system set "_optimizer_null_aware_antijoin" = false;
alter system set "_optimizer_extend_jppd_view_types" = false;
alter system set "_replace_virtual_columns" = false;
alter system set "_first_k_rows_dynamic_proration" = false;
alter system set "_bloom_pruning_enabled" = false;
alter system set "_optimizer_multi_level_push_pred" = false;
alter system set "_optim_peek_user_binds"=false; 
alter system set client_result_cache_size=0 scope=spfile;
alter system set result_cache_mode=MANUAL;
alter system set "_diag_hm_rc_enabled"=false; 
alter system set audit_trail=none scope=spfile;
alter system set "_memory_imm_mode_without_autosga"=false scope=both; 
alter system set "_enable_shared_pool_durations"=false scope=spfile;
alter system set deferred_segment_creation=false; 
alter system set "_datafile_write_errors_crash_instance"=false ;
alter system set "_fairness_threshold"=6 scope=spfile;
alter system set "_gc_read_mostly_locking"=false scope=spfile;
alter system set "_gc_policy_time"=0 scope=spfile;
alter system set "_gc_defer_time"=3  scope=spfile;
alter system set "parallel_force_local"=false;
alter system set "_gc_bypass_readers"=false;
alter system set "_row_cr"=false;
alter system set ddl_lock_timeout=0;
alter system set "_gby_hash_aggregation_enabled"=False scope=spfile;
alter system set "_cleanup_rollback_entries"=400 scope=spfile;
alter system set "_dbms_sql_security_level"=0                          scope=spfile;
alter system set "_bloom_pruning_enabled"=False                        scope=spfile;
alter system set "_simple_view_merging"=True                           scope=spfile;
alter system set "_enable_NUMA_optimization"=FALSE                     scope=spfile;
alter system set "_fix_control"='9344709:OFF'                           scope=spfile;
alter system set "_px_use_large_pool"=True                              scope=spfile;
alter system set "_mv_refresh_use_hash_sj"=FALSE                      scope=spfile;
alter system set "_mv_refresh_use_stats"=True                          scope=spfile;
alter system set "_like_with_bind_as_equality"=TRUE                    scope=spfile;
alter system set optimizer_secure_view_merging=false                   scope=spfile;
alter system set optimizer_capture_sql_plan_baselines=False            scope=spfile;
alter system set event="10949 TRACE NAME CONTEXT FOREVER:28401 trace name context forever, level 1"  scope=spfile;
exec  DBMS_AUTO_TASK_ADMIN.DISABLE( client_name =>  'auto optimizer stats collection', operation => NULL,window_name => NULL);
exec  DBMS_AUTO_TASK_ADMIN.DISABLE( client_name =>  'auto space advisor', operation => NULL,window_name => NULL);
exec  DBMS_AUTO_TASK_ADMIN.DISABLE( client_name => 'sql tuning advisor', operation => NULL,window_name => NULL);
commit;
exec dbms_scheduler.disable('ORACLE_OCM.MGMT_CONFIG_JOB');
exec dbms_scheduler.disable('ORACLE_OCM.MGMT_STATS_CONFIG_JOB');
exec DBMS_STATS.SET_PARAM( 'method_opt','FOR ALL COLUMNS SIZE 1' );
commit;



shutdown immediate;
startup ;


```




