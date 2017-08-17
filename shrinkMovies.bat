for /D %%i in (*.*) do (
  cd "%%i"
  for %%f in (*.ts) do (
    handbrakecli --input "%%f" -e x265 --output "%%~nf.mp4"
    move "%%f" ../../Archive/
  )
  cd ..
)