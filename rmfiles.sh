#!/bin/bash

# 指定した日付の範囲以外のファイルを削除
if [ "$CHOOSEDATE" == "yes" ]; then
  echo "日付範囲内の対象ファイルを以下に表示します。"
  for file in `\find . -maxdepth 1 -type f`; do
    LOGDATE=${file:28:10}
    if [ "$LOGDATE" == "" ]; then
      LOGDATE=`date "+%Y/%m/%d"`
    fi
    LOGDATE=`echo $LOGDATE | tr - /`
    RESULT=`datecheck "$LOGDATE" "$STARTDATE" "$ENDDATE"`
    if [ "$RESULT" == "true" ]; then
      echo $file
    elif [ "$RESULT" == "false" ]; then
      rm $file
    fi
  done
fi