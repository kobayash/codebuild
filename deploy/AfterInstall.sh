#!/usr/bin/env bash

GROUP_NAME=$DEPLOYMENT_GROUP_NAME

# 一時ファイルを複製
cp /var/www/html/wp-config.php /var/tmp/html/wp/wp-config.php
rm -rf /var/www/html
cp -rdf /var/tmp/html/wp /var/www/html

chown -R nginx:nginx /var/www/html

# 一時ディレクトリを削除
rm -rf /var/tmp/html

# デプロイ日時を表記したテキストを配置
echo $DEPLOYMENT_ID - `TZ=Asia/Tokyo date` - ${GROUP_NAME} > /var/www/html/wp-content/version.txt
