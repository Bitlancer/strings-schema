#!/bin/sh

sed -i 's/AUTO_INCREMENT=[0-9]*/AUTO_INCREMENT=1/g' $1
