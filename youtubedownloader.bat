@echo off
title Youtube Downloader

echo Do you want to create a new folder for your video's?
set /p janee="yes/no: "
IF "%janee%"=="" (
  Cls & Color 0C
  echo Make a choice
  Timeout /T 1 /NoBreak>nul
  Cls & Color 0F
  goto hetbegin
  ) ELSE (
    IF /i "%janee%"=="yes" goto makefolder
    IF /i "%janee%"=="no" goto again
    )

:makefolder
Cls
echo How would you like to call your folder?
echo (If you don't want to choose a name you can just press "ENTER")
set /p foldername="FolderName: "

IF "%foldername%"=="" (
    Cls & Color 0C
    echo Name of folder is empty.
    Timeout /T 1 /NoBreak>nul
    Cls & Color 0C
    echo Creating folder: YTDL
    Timeout /T 1 /NoBreak>nul
    Cls & Color 0F
    goto ytdlname
) ELSE (
  Cls & Color 0C
  echo Creating folder: %foldername%
  Timeout /T 2 /NoBreak>nul
  if not exist %cd%\%foldername% md %cd%\%foldername%
  cd %cd%\%foldername%
  Cls & Color 0F
  goto again
)

:ytdlname
if not exist %cd%\YTDL md %cd%\YTDL
cd %cd%\YTDL
goto again

:again
echo Paste the URL of the YouTube video you want to download.
set /p a="URL: "
IF "%a%"=="" (
  Cls & Color 0C
  echo You have to paste a link!
  Timeout /T 2 /NoBreak>nul
  Cls & Color 0F
  goto again
  ) ELSE (
    Cls & Color 0F
    goto chooseformat
    )

    :chooseformat
      echo 1)     Download the file as mp3.
      echo.
      echo 2)     Download the file as mp4.
      echo.
      echo 3)     Stop YouTube Downloader.
      color 0A
        choice /C 123 /N
        SET keuze=%ERRORLEVEL%
        IF %keuze% EQU 1 goto mpdriefile
        IF %keuze% EQU 2 goto mpvierfile
        IF %keuze% EQU 3 goto doei

:question
cls & color 0A
echo Your video is being downloaded...
Timeout /T 2 /NoBreak>nul
cls & color 0F
echo Would you like to download another YouTube video?
set /p ja="yes/no: "
IF /i "%ja%"=="yes" (
  Cls & Color 0F
  goto again
  )
IF /i "%ja%"=="no" goto folder

:folder
start %cd% & exit

:underdoormp4
start /min /realtime cmd /k "color 0A & ytdl %a% & exit"
goto question

:upperdoormp4
start /min /realtime cmd /k "title %b% & color 0A & ytdl %a% -o %b%.mp4 & exit"
goto question

:underdoormp3
start /min /realtime cmd /k "color 0A & ytdl %a% | ffmpeg -i pipe:0 -b:a 192K -vn !fulltitle!.mp3 & exit"
goto question

:upperdoormp3
start /min /realtime cmd /k "title %b% & color 0A & ytdl %a% | ffmpeg -i pipe:0 -b:a 192K -vn %b%.mp3 & exit"
goto question

:mpdriefile
cls & color 0F
echo How would you like to call your file?
echo (If you want to use the youtube title as file name, press "ENTER")
set /p b="Filename: "
IF "%b%"=="" (
  start /min /realtime /wait cmd /k "ytdl -i %a% > temp.txt & exit"=
  TYPE temp.txt | FIND "title:" > temp2.txt
  setlocal enabledelayedexpansion
  FOR /F "tokens=*" %%F IN (temp2.txt) DO (
  SET Build=%%F
  )
  SET duntitel=!Build:^|=-!
  SET titelscore=!duntitel:~7!
  SET titeltje=!titelscore: =_!
  SET tussentitel=!titeltje:^&=en!
  SET procent=!tussentitel:%%= !
  SET boven=!procent:^^= !
  SET links=!boven:^<= !
  SET rechts=!links:^>= !
  SET upcomma=!rechts:^`= !
  SET uppercomma=!upcomma:^'= !
  SET lowercomma=!uppercomma:^,= !
  SET puntcomma=!lowercomma:^;= !
  SET fulltitle=!puntcomma!

  del temp.txt & del temp2.txt
  goto underdoormp3
  ) ELSE (
    goto upperdoormp3
    )

:mpvierfile
cls & color 0F
echo How would you like to call your file?
echo (If you want to use the youtube title as file name, press "ENTER")
set /p b="Filename: "
IF "%b%"=="" (
    goto underdoormp4
  ) ELSE (
    Cls & Color 0F
    goto upperdoormp4
    )

:doei
cls & color 0C
echo Shutting down the downloading services...
Timeout /T 2 /NoBreak>nul
echo ".----------------.  .----------------.  .----------------. "
echo "| .--------------. || .--------------. || .--------------. |"
echo "| |   ______     | || |  ____  ____  | || |  _________   | |"
echo "| |  |_   _ \    | || | |_  _||_  _| | || | |_   ___  |  | |"
echo "| |    | |_) |   | || |   \ \  / /   | || |   | |_  \_|  | |"
echo "| |    |  __'.   | || |    \ \/ /    | || |   |  _|  _   | |"
echo "| |   _| |__) |  | || |    _|  |_    | || |  _| |___/ |  | |"
echo "| |  |_______/   | || |   |______|   | || | |_________|  | |"
echo "| |              | || |              | || |              | |"
echo "| '--------------' || '--------------' || '--------------' |"
echo "'----------------'  '----------------'  '----------------' "
Timeout /T 2 /NoBreak>nul
exit