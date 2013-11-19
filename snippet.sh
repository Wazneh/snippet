# Snippet - Chafic Najjar

output_directory="$HOME/Desktop/output"

if [ ! -d "$output_directory" ]; then
    mkdir ~/Desktop/output
fi

# current directroy
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$1"

# find the durations of all mp4 files
find . -name "*.mp4" |\
    xargs -I{} ffmpeg -i {} 2>&1 |\
    grep "Duration" |\
    cut -d ' ' -f 4 |\
    sed s/,// |\
    awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }' >> temp

# store the durations in an array
i=0
array=()
while read p; do
    array+=("$p")
    i=$((i+1))
done < temp
 
find . -name "*.mp4" > temp2

# trim the videos
i=0
while read p; do
    q=$(echo "$p" | rev | cut -d'/' -f1 | rev)
    echo "$p"
    ffmpeg -y -i "$p" -t 10 -ss $((${array[$i]}-10)) -vcodec copy -acodec copy ~/Desktop/output/"$q"
    i=$((i+1))
done < temp2

# remove temporary files
rm "temp"
rm "temp2"

