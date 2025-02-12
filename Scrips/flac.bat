@echo off
if "%~x1" ==".mkv" (
  ffmpeg -i "%~f1" -map 0:1 -c:a flac -compression_level 12 "%~p1%~n1.flac"
) else if "%~x1" ==".m2ts" (
  ffmpeg -i "%~f1" -map 0:1 -c:a flac -compression_level 12 "%~p1%~n1.flac"
) else (
  ffmpeg -i "%~f1" -c:a flac -compression_level 12 "%~p1%~n1.flac"
)
if "%2"=="" (
  goto end
) else if "%~x2" ==".mkv" (
  ffmpeg -i "%~f2" -map 0:1 -c:a flac -compression_level 12 "%~p2%~n2.flac"
) else if "%~x2" ==".m2ts" (
  ffmpeg -i "%~f2" -map 0:1 -c:a flac -compression_level 12 "%~p2%~n2.flac"
) else (
  ffmpeg -i "%~f2" -c:a flac -compression_level 12 "%~p2%~n2.flac"
)
if "%3"=="" ( 
  goto end
) else if "%~x3" ==".mkv" (
  ffmpeg -i "%~f3" -map 0:1 -c:a flac -compression_level 12 "%~p3%~n3.flac"
) else if "%~x3" ==".m2ts" (
  ffmpeg -i "%~f3" -map 0:1 -c:a flac -compression_level 12 "%~p3%~n3.flac"
) else (
  ffmpeg -i "%~f3" -c:a flac -compression_level 12 "%~p3%~n3.flac"
)
:end
pause
