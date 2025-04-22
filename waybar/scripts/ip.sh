#!/bin/bash

ip=$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '127.0.0.1' | head -n 1)

if [[ -n "$ip" ]]; then
    echo "{\"text\": \" $ip\", \"tooltip\": false}"
else
    echo "{\"text\": \" no IPv4\", \"tooltip\": false}"
fi
