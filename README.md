# 🧠 n8n Docker Setup

This repository contains a simple, beginner-friendly setup to run [n8n](https://n8n.io/) — a powerful workflow automation tool — locally using Docker.

> ✅ Ideal for developers or learners who want to get started with workflow automation  
> 🔗 GitHub Repository: https://github.com/MarkusTratschitt/n8n-docker

---

## 📋 Requirements

Make sure you have the following tools installed:

| Tool              | Purpose                              | Download / Info                                 |
|-------------------|---------------------------------------|--------------------------------------------------|
| Git               | Clone this repository                 | [Install Guide](#installing-git-on-macos-via-homebrew) |
| Docker            | Run the container                     | [docker.com](https://www.docker.com/products/docker-desktop/) *(or Colima for macOS)* |
| Visual Studio Code| Code editor with terminal             | [code.visualstudio.com](https://code.visualstudio.com/) |

---

## 🛠 Installing Git on macOS via Homebrew

If Git is not already installed, you can install it using [Homebrew](https://brew.sh/) – a package manager for macOS.

### Step 1 – Install Homebrew (if not installed):

Open the terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
---

### Step 2 – Install Git:
```bash
brew install git
```
---

### Step 3 – Verify Installation:

```bash
git --version
```
If Git is installed correctly, you should see the version number.

Example: git version 2.44.0
---

### Step 4 – Configure Git (recommended):

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```
This step is optional but recommended for better collaboration and version control.
---

### 🔐 Do I need a GitHub account to clone this?

No. You can clone any public GitHub repository without logging in or creating an account.

---

### 📁 Recommended Folder Structure

We recommend creating a development folder on your machine, for example:

```bash
~/DEV
└── Repositories
    └── n8n-docker ← project will live here
```
On macOS or Linux:

```bash
mkdir -p ~/DEV/Repositories
cd ~/DEV/Repositories
```

---

## 🚀 How to Get Started (Step-by-Step)

### 1. Clone the Repository

In your terminal:

```bash
cd ~/DEV/Repositories
git clone https://github.com/MarkusTratschitt/n8n-docker.git
cd n8n-docker
```
This will create a new folder called `n8n-docker` in your `~/DEV/Repositories` directory.

---

### 2. Open the Project in VS Code

```bash
code .
```
This command opens the current directory in Visual Studio Code.
If you don't have the `code` command available, you can enable it in VS Code by going to the Command Palette (Cmd + Shift + P) and typing "Shell Command: Install 'code' command in PATH".

💡 If code is not found, open VS Code manually and select File → Open Folder…

---

### 3. Run the Setup Script
In the terminal inside VS Code, run:

```bash
./init.sh
```

What this does:

  - Copies the environment file (.env.example → .env)
   
  - Starts the Docker container
   
  - Makes n8n available at: http://localhost:5678
   
🛠️ If you get a permission error, run:

```bash
chmod +x init.sh
```
This command makes the script executable.
---

### 4. Log In to n8n

Open http://localhost:5678 in your browser.

- Username: admin

- Password: supersecret

> ⚠️ **Important**: Change the password in the `.env` file for security reasons.

> ⚠️ **Important**: This setup is for local development only. Do not use it in production without proper security measures.

> ⚠️ **Important**: The default password is not secure. Change it in the `.env` file.

> ⚠️ **Important**: The default username is not secure. Change it in the `.env` file.

---

### 🛑 Stopping & Restarting

To stop the n8n container, run:

```bash
docker-compose down
```
This command stops and removes the container.
To restart the n8n container, run:

```bash
docker-compose up -d
```
This command starts the container in detached mode (in the background).

---

## 📂 Data Persistence

Your workflows and credentials are stored in the local ./data folder. This means your changes will not be lost when you restart the container.

---

## 🧹 Troubleshooting

### ❌ "Permission denied" on ./data

```bash
mkdir -p data
chmod -R 777 data
```

## 🍪 Cookie warning in Safari?

Safari blocks certain cookies without HTTPS. Either:

Use Chrome or Firefox, or

Set this in your .env:

```bash
N8N_SECURE_COOKIE=false
```

---

## ✅ Done!

You now have a fully working, self-contained instance of n8n, running locally in Docker — with all configuration and data in one folder.

Happy automating! 🤖

Made with ❤️ by Markus Tratschitt