#/bin/sh

# remove running fav-drop container if exists
fav_drop_container=`docker ps -a --filter='status=running' | grep "fav-drop" | awk '{print $1}'`
if [ ! -z "${fav_drop_container}" ] ; then
	echo "running fav-drop container: $fav_drop_container"

	echo "stop fav_drop_container"
	docker stop $fav_drop_container

	echo "remove fav_drop_container"
	docker rm $fav_drop_container
fi

echo "run fav-drop container"
docker run --name fav-drop -d loca/fav-drop mono "FavDrop/FavDrop.exe"
