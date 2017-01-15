for /D %%i in (*.*) do (
  cd "%%i"
  del inputs.txt
  for %%f in (*.MP4) do (
    echo file %%f >> inputs.txt
  )

  ffmpeg.exe -f concat -i inputs.txt -c copy out.mp4
  ffmpeg.exe -i out.mp4 -acodec copy -vcodec copy "../%%i.mkv"
  del out.mp4
  del inputs.txt
  cd ..
)
