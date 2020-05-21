#!/bin/bash

# 日付を指定するかどうか確認
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

# 開始日付/終了日付を入力 20200512 中村
if [ "$CHOOSEDATE" == "yes" ]; then
  read -p "開始日付をyyyy/mm/ddで入力してください:" firstdate
  echo "開始日付: $firstdate"

  read -p "終了日付をyyyy/mm/ddで入力してください:" seconddate
  echo "終了日付: $seconddate"

# 日付の順番がおかしい場合、若い日付をSTARTDATEとする。
  firstnum=`date -d "$firstdate" '+%s'`
  secondnum=`date -d "$seconddate" '+%s'`
  if [[ $firstnum -gt $secondnum ]]; then
    STARTDATE=$seconddate
    ENDDATE=$firstdate
  else
    STARTDATE=$firstdate
    ENDDATE=$seconddate
  fi
fi
