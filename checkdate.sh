#!/bin/bash

function checkdate()
{
  date=`date -d "$1" '+%s'`
  start=`date -d "$2" '+%s'`
  end=`date -d "$3" '+%s'`

#  if ( [[ $date -ge $start ]] -a [[ $date -le $end ]] ); then
  if [[ $date -ge $start ]]; then
    if [[ $date -le $end ]]; then
      echo "true"
    else
      echo "false"
    fi
  else
    echo "false"
  fi
}