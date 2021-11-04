 docker build -t api -f api/Dockerfile.api api &&
 docker tag api registry.heroku.com/smb-back/api &&
 docker push registry.heroku.com/smb-back/api &&
 heroku container:release api --app smb-back