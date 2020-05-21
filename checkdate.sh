#!/bin/bash

function checkdate()
{
  date=`date -d "$1" '+%s'`
  start=`date -d "$2" '+%s'`
  end=`date -d "$3" '+%s'`

  if  [[ $date -ge $start && $date -le $end ]]; then
    echo "true"
  else
    echo "false"
  fi
}