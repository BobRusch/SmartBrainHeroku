# __**SmartBrain --- Dockerized for Heroku**__
![SmartBrain](/images/smartbrain.jpg)
### __** This repo is created to be used with Docker on Heroku with Travis CI**__
__** Make sure you use postgreSQL instead of mySQL for this code base.__
## __🛠 &nbsp;Stack/Technologies used:&nbsp;__
![Git](https://img.shields.io/badge/-Git-333333?style=flat&logo=git)
![GitHub](https://img.shields.io/badge/-GitHub-333333?style=flat&logo=github)
![HTML5](https://img.shields.io/badge/-HTML5-333333?style=flat&logo=HTML5)
![CSS3](https://img.shields.io/badge/-CSS3-333333?style=flat&logo=CSS3&logoColor=1572B6)
![SASS](https://img.shields.io/badge/-SASS-333333?style=flat&logo=SASS&logoColor=CD6799)
![JavaScript](https://img.shields.io/badge/-JavaScript:ES6-333333?style=flat&logo=javascript)
![React](https://img.shields.io/badge/-React-333333?style=flat&logo=react)
![Node.js](https://img.shields.io/badge/-Node.js-05122A?style=flat&logo=node.js)
![Express](https://img.shields.io/badge/-Express-333333?style=flat&logo=express)
![Postgresql](https://img.shields.io/badge/-PostgreSQL-333333?style=flat&logo=postgresql&logoColor=FFFFFF)
![Bootstrap](https://img.shields.io/badge/-Bootstrap-333333?style=flat&logo=bootstrap)
![Heroku](https://img.shields.io/badge/-Heroku-333333?style=flat&logo=heroku)
![Docker](https://img.shields.io/badge/-Docker-333333?style=flat&logo=docker)
![made-for-nginx](https://img.shields.io/badge/-NGINX-1f425f.svg)
![Travis-CI](https://badgen.net/badge/icon/Travis-CI?icon=travis&label)]

# __**To run app:**__
This app uses a roll-your-own authentication system. So register or use the prebuilt login id: bob@em.com and a password of: 1234. After you signin, you will be displayed an entry screen where you can place the image address to have the system locate the faces in the image. Click [here](http://sbclient.herokuapp.com) to run a live demo of this app (At the bottom are some example photos links that can be used, or Google: image of people's faces and choose the link address for the image you would like to use)
#
# __**To Build App**__
#  __1. On Clarifai.com__
1. Create your own API key by creating and account on Clarifai  
1. Create a free account
1. Hit:`CREATE APPLICATION`
1. Fill in form and hit: `CREATE`
1. Locate app and click it
1. expose and copy API key
#
# __2. On Local Machine (NEEDS ONLY TO BE DONE ONCE)__
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
1. Run: heroku config:set CKEY=<Your_CLARIFAI_API_Key> -a <replace with unique name for api>
1. Run: heroku config:set PGSSLMODE=no-verify -a <replace with unique name for api>
1. Run: `heroku authorizations:create`
#
__Results should lokk simular to this__
![Heroku Config Variables (API/Backend)](/images/heroku_config_vars.png)

# __3. On Travis-CI.com__
1. Create an account if you don't already have one
1. add your repo to Travis
1. under more options, choose settings
1. Scroll down to Environment Variables and enter the following variables
* NAME ==> DOCKER_USER VALUE ==> <YOUR_DOCKER_ID> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> DOCKER_PSWD VALUE ==> <YOUR_DOCKER_PASSWORD> LEAVE TURN ON DISPLAY VALUE IN BUILD LOG off and hit add
* NAME ==> HEROKU_BACK ==> <replace with unique name for api> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> HEROKU_FRONT ==> <replace with unique name for client> TURN ON DISPLAY VALUE IN BUILD LOG and hit add
* NAME ==> HEROKU_+_AUTH VALUE ==> <value from running `heroku authorizations:create` and copying value for token > LEAVE TURN ON DISPLAY VALUE IN BUILD LOG off and hit add
#
__Results should lokk simular to this__
![Travis-CI Environemnt Variables](/images/travis_env_vars.png)
#
# __4. On Local Machine__
**__\*\* using bash, Git Bash or cmd [Win only]__**
1. Run: `git push origin master`
1. Run: `heroku pg:info <replace with unique name for api>`   **__if you receive the message `The local psql command could not be located. For help installing psql, see https://devcenter.heroku.com/articles/heroku-postgresql#local-setup`, you will need to install EDB PostgreSQL on your local machine__**
1. Run `heroku pg:psql --app <replace with unique name for api> -f ./api/postgres/tables/users.sql`
1. Run `heroku pg:psql --app <replace with unique name for api> -f ./api/postgres/tables/login.sql`
1. Run `heroku pg:psql --app <replace with unique name for api> -f ./api/postgres/seed/seed.sql`
  * Note: At times heroku puts the dyno for the app to sleep, you may need to restart the dyno
#
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
