set -o errexit
set -o nounset

main(){
  if [ $# -eq 0 ]
  then
    echo "Usage: ./error_handling <greetee>"
    exit 1
  fi
  if [ $# -ne 1 ]
  then
    exit -1
  fi
  echo "Hello, $1"
}

main "$@"
