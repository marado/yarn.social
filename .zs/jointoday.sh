#!/bin/sh

pods="twtxt.net twt.nfld.uk we.loveprivacy.club yarn.yarnpods.com yarn.zn80.net neotxt.dk"

random_pod="$(echo "$pods" | tr ' ' '\n' | shuf | head -n 1)"

printf "<a class=\"button\" href=\"https://%s/register\">Join Today!</a>" "$random_pod"
