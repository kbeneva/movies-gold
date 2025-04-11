## Movie APP
Application to review movies based on [this tutorial](https://www.youtube.com/watch?v=5PdEmeopJVQ&t=7731s)

### Stack
+ Frontend - React
+ Backend - Spring
+ Databse - MongoDB

### Cloning repos
To clone both frontend and backend repos at once, run this command : 

```bash
git clone --recurse-submodules git@github.com:gbenachour/movies-gold.git 
```

### Pulling repos
To pull both frontend and backend repos at once, run this command : 

```bash
git pull --recurse-submodules 
```

### Deploying the application using docker compose
To deploy all the stack using `docker compose`, you need to first create an `.env` (similar to `.env.example` file) containing all the necessary environment variables to run the application : 

```bash
cp .env.example .env
```
Then run :

```bash
docker compose up -d
```

### Automating deployment
You can also automate deployment of this application using the bash script `./deployment.sh`.

> **Note**
> + This script has only been tested on an Ubuntu 24.04 LTS machine. It might not work on other versions. 
> + For this script to work, images with the tag version specified in the `.env.example` file should be pushed in a public repository on docker hub for frontend and backend services.


