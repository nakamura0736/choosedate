#!/bin/bash

# 20200512 中村
PS3="日付を指定しますか？"
select VAR in yes no
do
  CHOOSEDATE="$VAR"
  if  [ "$VAR" == "yes" ]; then
    break
  elif [ "$VAR" == "no" ]; then
     break
  fi
done

if [ "$CHOOSEDATE" == "yes" ]; then
  read -p "開始日付をyyyy/mm/ddで入力してください:" STARTDATE
  echo ""
  echo "開始日付: $STARTDATE"

  read -p "終了日付をyyyy/mm/ddで入力してください:" ENDDATE
  echo ""
  echo "終了日付: $ENDDATE"
fi
