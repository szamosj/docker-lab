# 🐳 docker-lab - LAMP Stack Demo

Welcome to the **Docker Lab**! This demo shows how we can run a small web application using **Docker containers** for both the web server and the database.  

---

## 🗂️ Overview

This lab simulates a **production-like deployment** of a LAMP stack:

- 🖥️ **Web App:** Apache + PHP
- 🗄️ **Database:** MariaDB
- 🌐 **Browser:** Interface for viewing the web page

**Key Points:**

- Containers isolate the application and database for easy setup.
- Persistent volumes keep database data even if containers are restarted.
- Using Docker means no complicated symlinks or manual server setup.
- We can easily reset or reproduce the environment on any computer with Docker.

---

## 🔧 Architecture Diagram

🌐 Browser
│ (HTTP Requests)
▼
🖥️ Web App (Apache + PHP)
│ (queries via MySQLi)
▼
🗄️ Database (MariaDB)
│ (stores & returns data)
└─────────────┐
│
🖥️ Web App (renders data)
│
▼
🌐 Browser (displays page)

---

## 🚀 Getting Started

These instructions assume you've **forked or cloned** this repo.

### 1️⃣ Build and start the containers

```bash
docker compose up -d --build
up starts the containers.

-d runs them in detached mode.

--build rebuilds the images in case of changes.

We should see both containers (web and db) start successfully.

2️⃣ Verify the containers are running

docker compose ps
We should see two services:

web → Apache + PHP

db → MariaDB

🌐 Accessing the Web Page
Open your browser.

Navigate to: http://localhost:8080

We should see a Bootswatch-themed table populated from the MariaDB database.

🗄️ Inspecting the Database
To access the database container:

docker compose exec db mariadb -u labuser -p
# password: labpass
Example query to view data:

SELECT * FROM testdb.users;

🛠️ Stopping the Lab

When finished:

docker compose down

This stops and removes the containers, but database data remains in the Docker volume.

✅ Notes
All web files are served from the repo via the mounted volume.

Any changes made in the web app directory will reflect immediately in the container.

Docker allows this setup to be reproducible on any machine with Docker installed.
