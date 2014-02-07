Snippet
=======

Snippet is a bash script that snips the last 10 seconds of several mp4 files and merges them together into one mp4 file.

The output directory is `~/Desktop/output/`.

## Usage

`./snippet.sh path/to/input/directory`

## Install 

1. Install MP4Box: `sudo apt-get install gpac`
2. Install avconv: `sudo apt-get install libav-tools`
3. Clone this repo: `git clone https://github.com/chaficnajjar/snippet.git`
4. Run the script: `./snippet.sh`

## To do

+ ~~Use avconv instead of ffmpeg~~ 
+ ~~Add join feature (using avconv or MP4Box)~~
+ Add option for the user to choose the trim time
+ Add option for the user to choose the video type

## Credits

Author: Chafic Najjar - chafic.najjar@gmail.com

avconv: http://libav.org/
MP4Box: http://gpac.wp.mines-telecom.fr/mp4box/
