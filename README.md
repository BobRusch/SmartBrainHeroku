# __**SmartBrain --- Dockerized for Heroku**__
### __** This repo is created to be used with Docker on Heroku with Travis CI**__
#
# __1. On Local Machine (NEEDS ONLY TO BE DONE ONCE)__
1. If git is not installed go [here](https://github.com/git-guides/install-git)
1. Create a new repo on GitHub.com
1. Clone this repo
1. cd into new folder
1. Run: `rm -rf .git` [Linux/iOS/Git Bash] `del /F .git` [Win]
1. Run: `git init .`
1. Run: `git add .`
1. Run: `git commit -m "Initial Commit"`
1. Run: `git remote add origin git@github.com:<your_github_id>/<new repo>.git`
1. Run: `git push origin master`
1. Run: `npm i -g heroku` to install heroku cli
1. Run: `heroku create -a <replace with unique name for client>` to create client container
1. Run: `heroku create -a <replace with unique name for api>` to create api container
1. Run: `heroku stack:set container -a <client name>`
1. Run: `heroku stack:set container -a <api name>`
1. Run: `heroku addons:create redistogo:nano -a <api name>`
1. Run: `heroku addons:create heroku-postgresql:hobby-dev -a <api name>`

# 2. __On Clarifai.com__
1. Create your own API key by creating and account on Clarifai  
1. Create a free account
1. Hit:`CREATE APPLICATION`
1. Fill in form and hit: `CREATE`
1. Locate app and click it
1. expose and copy API key


# 3. __On Travis-CI.com__
1. Create an account if you don't already have one
1. add your repo to Travis
1. under more options, choose settings
1. Scroll down to Environment Variables and enter the following variables
* NAME ==> DOCKER_USER VALUE ==> <YOUR_DOCKER_ID> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> DOCKER_PSWD VALUE ==> <YOUR_DOCKER_PASSWORD> LEAVE TURN ON DISPLAY VALUE IN BUILD LOG off and hit add
* NAME ==> HEROKU_BACK ==> <replace with unique name for api> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> HEROKU_FRONT ==> <replace with unique name for client> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> HEROKU+AUTH VALUE ==> <value from running `heroku authorizations:create` and copying value for token > LEAVE TURN ON DISPLAY VALUE IN BUILD LOG off and hit add
#
__Results should lokk simular to this__
![Travis-CI Environemnt Variables](/images/travis_env_vars.png)



# 4. __On
1. Set env var DOCKER_USER to your docker hub id
2. set env var DOCKER_PSWD to your docker hub password
3. Set `CKEY` to your API key value from step 4 above
6. Set `JWT_SECRET` some value used as the seed to JWT to create user auth tokens
7. Set PORT=80
8. to start `docker-compose up -V` to stop `docker-compose down -v`




** Make sure you use postgreSQL instead of mySQL for this code base.


1. Clone this repo
2. Run `npm install`
3. Run `npm start`

# __Sample Images:__

https://www.vanseodesign.com/blog/wp-content/uploads/2010/03/model.jpg

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8K4ZlwUqQv3bNRvsNtWNtET797xrEIcdpCw&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqwfIsF4mgh8IcX9GSw-iCgo59gPIwvB3ZLw&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQqw0WIX4FWgWBvKwh46nsM131wTX12YaWIw&usqp=CAU

https://www.sciencenewsforstudents.org/wp-content/uploads/2019/11/860_main_beauty.png

https://pyxis.nymag.com/v1/imgs/ca7/92c/edbd5d41a7d48c7fa34cd465ffac569d87-megan-harry.2x.rsocial.w600.jpg

https://comps.canstockphoto.com/group-of-happy-people-with-banner-stock-photos_csp9809823.jpg

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcKRdiIdtvaHOZFUQt_-v1O5sNJpUgwMfTbA&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlUIPiTM65nY_S86Agd369lfz9a_TZ4_Vuew&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBtPbOKerWBgv7eqrbrP9i_PxDvcFnya_iLA&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtKT7CxmbCtx4_oEAeou3xBlJ16xkPNdrPEA&usqp=CAU

https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEyvMNtBdcKecsFRh-q9vVemid7wtRxaDuxg&usqp=CAU
