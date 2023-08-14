set -x
my_jar=$1
mysql_db=mydb
mysql_user=myuser
mysql_password=mypassword
my_log=myapp_log

# 重命名jar文件
mv $my_jar $my_jar-$(date +'%Y-%m-%d_%H-%M-%S')

# 复制文件到当前目录
mv /tmp/$my_jar .

# 杀死旧进程
jps | grep $my_jar | awk '{print $1}' | xargs kill -9

# 后台启动新进程
nohup java -Xms256m -jar ./$my_jar --spring.datasource.url=jdbc:mysql://localhost:3306/$mysql_db --spring.datasource.username=$mysql_user --spring.datasource.password=$mysql_password >> $my_log 2>&1 &