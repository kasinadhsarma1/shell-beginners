#!/bin/bash

set -euo pipefail

echo "select falvour:"

echo "1. internal"

echo "2. external"

read -rp " Please select the flavour (1 or 2): " flavor

case "$flavor" in
    1) flavor="internal" ;;
    2) flavor="external" ;;
    q|Q) exit 0 ;;
    *) echo "Invalid choice. Please select 1 or 2." ; exit 1;;

esac
secret_file=".env.$flavor"

if [ ! -f "$secret_file" ]; then
    echo "Secret file $secret_file does not exist. Please create it first."
    exit 1
fi

exec flutter run --flavor "$flavor" --dart-define=FLAVOR="$flavor" \
    --dart-define-from-file="$secret_file" "$@"