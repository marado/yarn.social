#!/bin/sh

get_pod_mau() {
  uri="$1"
  mau="$(curl -qso - "$uri/metrics" | grep -E '^yarnd_server_mau \d+' | awk '{ print $2 }')"
  printf "%s" "$mau"
}

cat <<EOF
| **Pod**                                             | **Location**       | **Operator**                                           |                   **Users**                       |
| :-------------------------------------------------- | ------------------ | ------------------------------------------------------ | ------------------------------------------------- |
| [twtxt.net](https://twtxt.net)                      | Australia/Brisbane | [@prologic](https://twtxt.net/~prologic)               | $(get_pod_mau "https://twtxt.net")                |
| [nfld](https://twt.nfld.uk)                         | United Kingdom     | [@jlj](https://twt.nfld.uk/~jlj)                       | $(get_pod_mau "https://twt.nfld.uk")              |
| [We.Love.Privacy.Club](https://we.loveprivacy.club) | Australia          | [@eldersnake](https://we.loveprivacy.club/~eldersnake) | $(get_pod_mau "https://we.loveprivacy.club")      |
| [Yarn Pods](https://yarn.yarnpods.com)              | Australia/Perth    | [@screem](https://yarn.yarnpods.com/~screem/)          | $(get_pod_mau "https://yarn.yarnpods.com")        |
| [NetBros](https://netbros.com)                      | US East            | [@david](https://netbros.com/~david/)                  | $(get_pod_mau "https://netbros.com")              |
| [zn80.net](https://yarn.zn80.net)                   | Europe/Germany     | [@cblte](https://yarn.zn80.net/~cblte/)                | $(get_pod_mau "https://yarn.zn80.net")            |
EOF
