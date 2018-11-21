# How to deploy

1. Have the Heroku CLI installed
2. Be logged in to an account that has access to the projects
3. Run `yarn deploy-CI:stage`
4. Profit

# Changing version of Prisma

Change the version argument in the `heroku:<stage>` scripts in `package.json` and deploy

## First time setup

1. Set env vars in Heroku for the app
2. Install Heroku CLI (`brew install heroku/brew/heroku` if on Mac)
3. Login to Heroku CLI
4. Login to Heroku's container registry:
   1. `heroku container:login`
5. `heroku create --region eu`
6. Insert the env variables required in `prerun_hook.sh` in the config for your Heroku app
   1. Set `PRISMA_CONFIG_PATH` to `/app/config.yml`
   2. Heroku will figure out `PORT` on it's own
   3. Set `DB_USER`, `PRISMA_MANAGEMENT_API_SECRET`, `SQL_HOST` and `SQL_PASSWORD`
7. Insert your desired Prisma image and your Heroku app name into th `heroku:stage` and the app name into `heroku:release` script in the project's `package.json`
8. Run `yarn deploy-CI:stage`
