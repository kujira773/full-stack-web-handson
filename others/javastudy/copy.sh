#!/bin/sh

read -p "プロジェクト名を入力してください：" APP_NAME
APACH_PJ_DIR="/Users/nanami773/Desktop/apache-tomcat-9.0.34/webapps"
PJ_ROOT="/Users/nanami773/IdeaProjects/${APP_NAME}"

# tmocatのゴミを消す
if [ -d ${APACH_PJ_DIR}/${APP_NAME} ]; then
  echo "rm ${APACH_PJ_DIR}/${APP_NAME}"
  echo "rm ${APACH_PJ_DIR}/${APP_NAME}.war"
  rm -r ${APACH_PJ_DIR}/${APP_NAME}
  rm ${APACH_PJ_DIR}/${APP_NAME}.war
fi

# projectのルートに移動
cd ${PJ_ROOT}

# mavenでwarビルド
mvn clean package

# warをtomcatにコピー
cp ${PJ_ROOT}/target/${APP_NAME}.war ${APACH_PJ_DIR}
# chmod 755 ${APACH_PJ_DIR}/${APP_NAME}.war