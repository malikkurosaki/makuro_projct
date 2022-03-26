#!/usr/bin/env bash
for file in xproject/*.sh; do
    . $file
done

if [[ $# -eq 0 ]]; then
    echo "No arguments supplied"
    _help
else
    case $1 in
    *)
        _help
        exit 1
        ;;
    esac
fi
