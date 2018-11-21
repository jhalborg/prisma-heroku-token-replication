#! /bin/bash

set -e

printf "
port: ${PORT}
managementApiSecret: ${PRISMA_MANAGEMENT_API_SECRET}
databases:
  default:
    connector: mysql
    host: ${SQL_HOST}
    port: 3306
    user: ${DB_USER}
    password: ${SQL_PASSWORD}
    migrations: true
    active: true
" >> ${PRISMA_CONFIG_PATH}


# database: ${DB_NAME}
# schema: public