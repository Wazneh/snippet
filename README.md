# Snippet

Snippet is a bash script that snips the last 10 seconds of several mp4 files and merges them together into one mp4 file.

The output directory is `~/Desktop/output/`.

## Dependencies

+ [avconv](http://libav.org/)
+ [MP4Box](http://gpac.wp.mines-telecom.fr/mp4box/).

### Ubuntu

Install all dependencies on Ubuntu 14.04 and above:

`sudo apt-get install libav-tools gpac`

## Installation and Usage

```
git clone https://github.com/chaficnajjar/snippet.git
cd snippet
./snippet.sh path/to/input/directory
```

## License and Credits

Snippet code is MIT licensed.

```
The MIT License (MIT)

Copyright (c) 2015 Chafic

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

Created by [Chafic Najjar](https://github.com/chaficnajjar).
