echo "$HEROKU_AUTH" | docker login -u "_" --password-stdin registry.heroku.com
docker push registry.heroku.com/smb-back/web
heroku container:release web --app $HEROKU_BACK
docker push registry.heroku.com/sbclient/web
heroku container:release web --app $HEROKU_FRONT