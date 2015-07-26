#!/bin/bash
# According to https://developer.apple.com/library/ios/#qa/qa1686/_index.html
# Install ImageMagick with MacPort: sudo port install ImageMagick
# run on mac: sh asicon.sh src.png
#convert $1 -resize 1024x1024 iTunesArtwork@2x.png   # App list in iTunes for devices with retina display
#convert $1 -resize 512x512  iTunesArtwork.png       # Ad Hoc iTunes
convert $1 -resize 180x180  touch-icon-180.png      # Home screen on iPhone 6 Plus
convert $1 -resize 152x152  touch-icon-152.png      # Home screen on iPad with retina display
convert $1 -resize 144x144  touch-icon-144.png      # Home screen for "The New iPad"
convert $1 -resize 120x120  touch-icon-120.png      # Spotlight on iPhone 6 Plus
convert $1 -resize 114x114  touch-icon-114.png      # Home screen for Retina display iPhone/iPod
convert $1 -resize 76x76    touch-icon-76.png       # Home screen on iPad
convert $1 -resize 72x72    touch-icon-72.png       # App Store and Home screen on iPad
convert $1 -resize 57x57    touch-icon-57.png       # Home screen on non-Retina iPhone/iPod
convert $1 -resize 32x32    favicon-32.png          # Settings on iPad and iPhone, and Spotlight on iPhone