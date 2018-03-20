for arg
do printf "file '%s'\n" ./"$arg"/*.MP4 > "$arg.txt" 
ffmpeg -f concat -i "$arg.txt" -c copy "$arg.mp4"
ffmpeg -i "$arg.mp4" -acodec copy -vcodec copy "$arg.mkv"
rm "$arg.mp4"
rm "$arg.txt"
done
