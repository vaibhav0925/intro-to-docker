## Manual Introduction
- Install Node.js locally
- Clone the repo
- Insatall the depenedency(npm insatall)
- Start the DB locally
    - docker run -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
    - Go to neon.tech and get yourself new DB
- Change the .env file and update your DB credentials
- npx prisma migrate
- npx prisma generate
- npx run build
- npx run start


## Docker Insatallation
- Insatll Docker
- Create a Netwok - docker network create user_project
- Start Postgress
    - docker run --network user-project -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres
- Build the image - `docker build --network=host -t user-project .`
- Start the project - `docker run --network user-project -e DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres 
    -p 3000:3000 user-project`



## Docker Insatallation Steps
- Insatll docker, docker-compose
- Run `docker compose up`