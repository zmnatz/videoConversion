for /D %%i in (*.*) do (
  handbrakecli --input "%%i" --preset "High Profile" --output "Z:\Videos\MP4\%%i.mp4"
  move "%%i" ../Converted/
)
