# Returns the contents of ${PATH} the path passed in ($1) removed
function path_without() {
  path_to_remove=$1
  IFS=':'
  t=($PATH)
  unset IFS
  t=(${t[@]%%*${path_to_remove}*})
  IFS=':'
  echo "${t[*]}"
  unset IFS
}

for usr_local_path in /usr/local/sbin /usr/local/bin
do
  export PATH=${usr_local_path}:`path_without ${usr_local_path}`
done

unset path_without
