function reorder_bin_paths() {
  NEW_PATH=()

  # Split path on colon
  IFS=":" PATH_BITS=($PATH)

  for BIT in "${PATH_BITS[@]}"; do
    # Do not include /usr/local/sbin or /usr/local/bin in their normal locations
    if [ "/usr/local/sbin" == "$BIT" ]; then
      continue
    fi
    if [ "/usr/local/bin" == "$BIT" ]; then
      continue
    fi

    # Move theme to directly before their /usr/bin and /usr/sbin equivalents
    if [ "/usr/bin" == "$BIT" ]; then
      NEW_PATH=("${NEW_PATH[@]}" "/usr/local/bin")
    fi
    if [ "/usr/sbin" == "$BIT" ]; then
      NEW_PATH=("${NEW_PATH[@]}" "/usr/local/sbin")
    fi

    # Every other item should be in its natural order
    NEW_PATH=("${NEW_PATH[@]}" $BIT)
  done

  # Join array on colon
  IFS=":" echo "${NEW_PATH[*]}"
}

export PATH
PATH=$(reorder_bin_paths)

unset reorder_bin_paths
