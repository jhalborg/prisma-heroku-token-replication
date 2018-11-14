# Reproduction of token error for Heroku+Prisma

The project contains two sub projects:

1. The Prisma server, to be hosted on Heroku
2. The API server

Two reproduce the error, do the following:

1. Follow the "First time setup" guide in the `prisma-server` project
2. `cd` into the `api-server`, and run
3. `yarn prisma init`
4. select your created server from step 1
5. `yarn prisma deploy`
6. See the error

```
Creating stage dev for service api-server !

ERROR: Authentication token is invalid: Token can't be decoded: Invalid signature for this token or wrong algorithm.
{
  "data": {
    "addProject": null
  },
  "errors": [
    {
      "locations": [
        {
          "line": 2,
          "column": 9
        }
      ],
      "path": [
        "addProject"
      ],
      "code": 3015,
      "message": "Authentication token is invalid: Token can't be decoded: Invalid signature for this token or wrong algorithm.",
      "requestId": "local:management:cjoh579470235062658mh53ir"
    }
  ],
  "status": 200
}
```
