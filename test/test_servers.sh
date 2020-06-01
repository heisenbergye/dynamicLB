podman run -p 10081:80 -v /mnt/nginx-upsync/test/html1/:/usr/share/nginx/html/ -d docker.io/library/nginx:alpine
podman run -p 10082:80 -v /mnt/nginx-upsync/test/html2/:/usr/share/nginx/html/ -d docker.io/library/nginx:alpine

podman run -p 10080:80 -v /mnt/nginx-upsync/nginx.conf:/etc/nginx/nginx.conf -d docker.io/heisenbergye/nginx-upsync:alpine-lua
