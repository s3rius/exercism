set -o errexit
set -o nounset

drop(){
  if [ $(($1 % $2)) -eq 0 ]
    then
      echo $3
    else
      echo ""
  fi
}

main(){
  str=""
  str+=$(drop $1 3 "Pling")
  str+=$(drop $1 5 "Plang")
  str+=$(drop $1 7 "Plong")
  if [ -z $str ]
    then
      str=$1
  fi
  echo "$str"
}

main $@
