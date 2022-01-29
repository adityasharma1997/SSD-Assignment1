#!/bin/bash
du -sh */ | sort -rh | awk -F / '{print $1}'| awk '{print $2"\t"$1}'
