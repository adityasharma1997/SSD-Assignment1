#!/bin/bash
grep -i -oh '[A-Za-z0-9!@#$%^&-*()_+]*ing' $1 | awk '{print tolower($0)}'>$2
