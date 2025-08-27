🐳 Docker Lab

Welcome to the Docker Lab! 🎉
In this lab, we will run a ready-to-use web + database environment using Docker. No complex setup required — just run a few commands and see your web app in action!

🚀 What We'll See

Web app (Apache + PHP) running a simple page with a table of users

Database (MariaDB) storing user data

Docker Compose managing everything so we don’t have to manually install or configure services

Think of this as a tiny "production-like" setup: the web app talks to the database just like in a real deployment.

📝 Prerequisites

GitHub Codespace or local machine with Docker + Docker Compose installed

Basic terminal knowledge

📂 What’s in this Repo

docker-compose.yml → defines web and db services

.devcontainer/Dockerfile → builds the web container

db_setup.sql → initializes the database with sample data

index.php → simple PHP page displaying the database table

⚡ Quick Start (Demo Mode)

Fork & Clone the Repo

git clone https://github.com/YOUR-ORG/docker-lab.git
cd docker-lab


Start Everything

docker compose up -d --build


✅ This builds and starts the web + database containers

Open the Web App

Click the port 8080 link in Codespaces, or visit:
http://localhost:8080
 🌐

Check Database (Optional)

docker compose logs db


Stop the Environment

docker compose down


Tip: If you want a fresh database, remove the database volume before starting again:

docker compose down -v
docker compose up -d --build

🔑 Key Concepts in This Lab

Containers: Isolated environments for web and database

Volumes: Keep database data even if the container restarts

Port Mapping: Access the web app through port 8080

Environment Variables: Set database credentials easily

🛠️ Next Steps

Use this lab to explore networking tools and performance troubleshooting in a follow-up lab

Experiment with editing index.php or adding new tables to the database


