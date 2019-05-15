#!/bin/bash


echo please input DB_NAME/SID 
read ORACLE_SID


echo please input charset CHARSET
read CHARSET

echo please input oradata location 
read ORACLE_DATA_LOCATION

mkdir -p $ORACLE_DATA_LOCATION


export ORACLE_SID=$ORACLE_SID
export TEMPLATE_NAME=General_Purpose.dbc
export LISTENER_NAME=LISTENER
export CREATE_AS_CDB=false
export ORACLE_DATA_LOCATION=$ORACLE_DATA_LOCATION

export ORACLE_HOME=/opt/oracle/product/19c/dbhome_1
export PATH=$ORACLE_HOME/bin:$PATH
LSNR=$ORACLE_HOME/bin/lsnrctl
SQLPLUS=$ORACLE_HOME/bin/sqlplus
DBCA=$ORACLE_HOME/bin/dbca
NETCA=$ORACLE_HOME/bin/netca
ORACLE_OWNER=oracle


echo -e "export LANG=en_US.UTF-8\nexport ORACLE_HOME=/opt/oracle/product/19c/dbhome_1\nexport NLS_LANG=american_america.$CHARSET\nexport ORACLE_SID=$ORACLE_SID\nexport ORACLE_BASE=/opt/oracle\nalias sql='sqlplus / as sysdba'\n export PATH=$ORACLE_HOME/bin:$PATH"  > /home/oracle/.bash_profile

su -s /bin/bash $ORACLE_OWNER -c "$DBCA -silent -createDatabase -gdbName $ORACLE_SID -templateName $TEMPLATE_NAME -characterSet $CHARSET -createAsContainerDatabase $CREATE_AS_CDB  -datafileDestination $ORACLE_DATA_LOCATION -sid $ORACLE_SID -autoGeneratePasswords"






