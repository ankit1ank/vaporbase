# Basic template for creating vapor apps
This configures and and adds postgres db

Steps:

1. Add the following json to Config/secrets/postgresql.json

    {
        "host": "127.0.0.1",
        "user": "username",
        "password": "",
        "database": "dbame",
        "port": 5432
    }

2. Run `vapor xcode` to generate code project

