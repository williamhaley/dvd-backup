#!/usr/bin/env bash

set -e

script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

SCRATCH='.'
device='/dev/sr0'

NAME=$(isoinfo -i ${device} -d | grep -i 'Volume id:' | sed 's|Volume id: ||g')

if [ -z "$NAME" ];
then
	echo "No name detected."
	exit 1
fi

echo "Name is '$NAME'"

python3 "${script_dir}/dvdvideo-backup-image" "${device}" "${SCRATCH}/${NAME}.iso" && eject
