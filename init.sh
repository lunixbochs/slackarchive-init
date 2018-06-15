#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <elasticsearch url>"
    exit 1
fi

# install template
curl -XPUT --data @template.json "$1"/_template/slackarchive; echo

# create index
curl -XPUT --data @create.json "$1"/slackarchive; echo
