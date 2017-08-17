for i in *;do
cd "$i"
find . -name '*.MP4' -exec echo "file {}" \; > inputs.txt

name=$i
# name=${PWD##*/}

echo "$name"

ffmpeg -f concat -i inputs.txt -c copy "$name.mp4"
ffmpeg -i "$name.mp4" -acodec copy -vcodec copy "../$name.mkv"
rm "$name.mp4"
rm inputs.txt
done
