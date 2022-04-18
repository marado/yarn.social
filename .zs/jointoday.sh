#!/bin/sh

pods="twtxt.net twt.nfld.uk we.loveprivacy.club yarn.yarnpods.com yarn.zn80.net neotxt.dk"

pick_random_pod() {
  random_pod="$(echo "$pods" | tr ' ' '\n' | shuf | head -n 1)"
  while ! curl -qsSL "https://${random_pod}/register" > /dev/null 2>&1; do
    sleep 1
    random_pod="$(echo "$pods" | tr ' ' '\n' | shuf | head -n 1)"
  done
  printf "%s" "$random_pod"
}


printf "<a class=\"button\" href=\"https://%s/register\">Join Today!</a>" "$(pick_random_pod)"
