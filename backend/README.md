

依赖：
-----
mysql5.6及以上
python3


初始化：
-----
virtualenv -p python3 env
source env/bin/activate

安装依赖：
pip install -r requirements.txt

初始化数据库：
python manage.py makemigrations && python manage.py migrate
python manage.py init_users
python manage.py init_cmdb
python manage.py collectstatic --noinput


备注：
-----
默认管理员
账号：admin 
密码：admin@123
