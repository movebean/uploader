FROM gcr.io/go-containerregistry/crane:debug

COPY ["./upload.sh", "/app/upload.sh"]

WORKDIR /app

ENTRYPOINT ["/busybox/sh"]

CMD ["upload.sh"]
