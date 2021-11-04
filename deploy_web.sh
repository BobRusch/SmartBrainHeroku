 docker build -t web -f client/Dockerfile.client client &&
 docker tag web registry.heroku.com/smb-front/web &&
 docker push registry.heroku.com/smb-front/web &&
 heroku container:release web --app smb-front