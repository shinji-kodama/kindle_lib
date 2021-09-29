mkdir -p work 2>/dev/null
cp ${HOME}/Library/Containers/com.amazon.Kindle/Data/Library/Application\ Support/Kindle/Cache/KindleSyncMetadataCache.xml work/
docker-compose build
docker-compose run --entrypoint "python /data/src/main.py" amazon-lib-list
docker-compose down
