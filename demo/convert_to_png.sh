#!/bin/bash

# convert produces unwanted artefacts
#convert -density 200 -background white demo_network.pdf _%02d.png
#ls -1 _*.png | xargs -i convert -flatten {} image{}
#rm _*.png

pdftoppm -png -r 200 demo_network.pdf image
perl-rename 's/\-/_/' image*.png
