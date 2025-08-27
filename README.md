# 🐳 Docker Lab - LAMP Stack Demo

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

## 🚀 Getting Started

These instructions assume you've **forked or cloned** this repo.

### 1️⃣ Build and start the containers

```bash
docker compose up -d --build
