#!/bin/sh

cd `dirname $0`

echo $0 $1 $2
type=$1

PM2_CONFIG=pm2_ecosystem.config.js
LOG_FILE=logs/pm2_server_*
APP_NAME=aps_server_assets
APP_TEST_NAME=aps_server_assets_test
LOG_TEST_FILE=logs/pm2_test_*

case $type in
dev)            # 开发测试
    (source env/bin/activate && python manage.py runserver)
    ;;
start)          # 线上正式服
    pm2 start $PM2_CONFIG --only $APP_NAME --env production 
    tail -f $LOG_FILE
    ;;
tail)
    tail -f $LOG_FILE
    ;;
*)
    echo "USAGE: ./shart.sh (dev|dev6112|start|stop)"
    ;;
esac
