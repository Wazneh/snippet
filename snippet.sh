mkdir ~/Desktop/output

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

path="$1"
cd "$path"

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
    echo ${array[$i]}
    i=$((i+1))
done < temp
 
find . -name "*.mp4" > temp2

i=0
while read p; do
    echo "Reading line $p"
    echo ${array[$i]}
    ffmpeg -y -i "$p" -t 10 -ss $((${array[$i]}-10)) -vcodec copy -acodec copy ~/Desktop/output"${p#?}"
    i=$((i+1))
done < temp2

cd "$DIR"
rm "$path/temp"
rm "$path/temp2"

