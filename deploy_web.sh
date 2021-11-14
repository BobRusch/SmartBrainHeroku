 docker build -t web -f client/Dockerfile.client client &&
 docker tag web registry.heroku.com/sbclient/web &&
 docker push registry.heroku.com/sbclient/web &&
 heroku container:release web --app sbclient