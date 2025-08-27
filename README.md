Docker Lab

This repository provides a simple, ready-to-run example of using Docker Compose to set up a basic web + database environment. It is designed for students learning the fundamentals of containerized environments and how applications can run using Docker.

What This Lab Demonstrates

How to start a multi-container application using Docker Compose

How web applications (Apache/PHP) can interact with a database (MariaDB)

How to map ports, manage volumes, and automatically initialize a database

How containerized applications can be started quickly without complex local setup

Prerequisites

A GitHub Codespace (recommended) or local environment with Docker and Docker Compose installed.

Basic familiarity with the terminal.

What's Inside

Web Service (Apache + PHP)
Runs a simple PHP web application. Mapped to http://localhost:8080
.

Database Service (MariaDB 10.11)
Configured with:

Database: testdb

Username: labuser

Password: labpass

Root password: rootpassword

Docker Volumes
Persistent storage for the MariaDB database.

SQL Initialization Script (db_setup.sql)
Automatically runs when the database container is first created.
(If the database volume already exists, this script will not re-run unless the volume is removed.)

Quick Start (Demo Mode)

Clone this repository:

git clone https://github.com/YOUR-ORG/docker-lab.git
cd docker-lab


Start the environment:

docker compose up -d --build


Access the web app:

Visit: http://localhost:8080

Check database logs (optional):

docker compose logs db


Stop the environment:

docker compose down

How Database Initialization Works

The db service uses a custom MariaDB image that copies db_setup.sql into /docker-entrypoint-initdb.d/.
This script runs only when the database is first created (fresh volume).

To reset the database:

docker compose down -v
docker compose up -d --build


This removes the database volume (db_data) and starts fresh.

Key Docker Concepts Demonstrated

Services: Defined in docker-compose.yml (web & db)

Volumes: Persistent storage for database data

Port Mapping: Host port 8080 → Container port 80

Environment Variables: Used to set database credentials

Build Context: Custom web container built from .devcontainer/Dockerfile

Next Steps

This repository will serve as the foundation for a follow-up lab focusing on networking concepts using Docker.
