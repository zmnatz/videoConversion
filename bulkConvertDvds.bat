for /D %%i in (*.*) do (
  handbrakecli --input "%%i" --preset "High Profile" --output "converted\%%i.mp4"
  move "%%i" archive/
)
