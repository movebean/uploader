TAG=$1
LOCAL_IMAGE=uttne/crane-uploader:${TAG}
TARGET_IMAGE=ccr.ccs.tencentyun.com/tem_runtime_images/uploader:${TAG}

docker build -t ${LOCAL_IMAGE} .

docker tag ${LOCAL_IMAGE} ${TARGET_IMAGE}
docker push ${TARGET_IMAGE}
docker tag ${LOCAL_IMAGE} hk${TARGET_IMAGE}
docker push hk${TARGET_IMAGE}
docker tag ${LOCAL_IMAGE} jp${TARGET_IMAGE}
docker push jp${TARGET_IMAGE}
