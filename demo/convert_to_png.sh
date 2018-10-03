#!/bin/bash

convert -density 300 -background white demo_network.pdf _%03d.png
ls -1 _*.png | xargs -i convert -flatten {} image{}
rm _*.png
