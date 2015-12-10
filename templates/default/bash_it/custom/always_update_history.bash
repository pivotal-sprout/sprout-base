#/usr/bin/env bash

function update_history {
  history -a
  history -c
  history -r
}

PROMPT_COMMAND="update_history;$PROMPT_COMMAND"
