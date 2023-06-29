@REM @echo off
cd Gaana-API
CALL mvn clean install -DskipTests
echo "Done Gaana-API"

cd ../Gaana-Playlist-Fetcher
CALL mvn clean install -DskipTests
echo "Done Gaana-Playlist-Fetcher"

cd ../Gaana-Request-Processor
CALL mvn clean install -DskipTests
echo "Done Gaana-Request-Processor"

cd ../Gaana-Song-Fetcher
CALL mvn clean install -DskipTests
echo "Gaana-Song-Fetcher"

cd ../Gaana-Zipper
CALL mvn clean install -DskipTests
echo "Done Gaana-Zipper"

cd ../gaana-gownloader-ui
docker build  -t vikramd5/gaana-downloader-ui .
echo "Done gaana-gownloader-ui"