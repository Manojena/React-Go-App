# 🚀 Employee Management System

This project consists of a **Go (Golang) backend** and a **ReactJS frontend**.

---

# 📌 **Backend (Go 1.19)**

### **Description**
- Backend is written in **Go 1.19**
- Server runs on **port 8080**

---

## ▶️ **How to Run Backend**

### **1️⃣ Install Go 1.19**
```bash
wget https://go.dev/dl/go1.19.13.linux-amd64.tar.gz -O /tmp/go1.19.13.linux-amd64.tar.gz && sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf /tmp/go1.19.13.linux-amd64.tar.gz && echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc && echo 'export GOPATH=$HOME/go' >> ~/.bashrc && echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bashrc && source ~/.bashrc && go version
```

---

### **2️⃣ Install dependencies**
```bash
go get ./...
```

---

### **3️⃣ Set environment variables**
```bash
export DB_HOST=<POSTGRES_HOST>
export DB_PORT=<POSTGRES_PORT>
export DB_NAME=<POSTGRES_DB_NAME>
export DB_USER=<POSTGRES_USER>
export DB_PASSWORD=<POSTGRES_PASSWORD>
export ALLOWED_ORIGINS=<ALLOWED_ORIGINS_VALUE>
```

---

### **4️⃣ Run the server**
```bash
go run main.go
```

---

# 🖥️ **Frontend (ReactJS)**

### **Description**
- Frontend is written in **ReactJS**
- Server runs on **port 3000**

---

## ▶️ **How to Run Frontend**

### **1️⃣ Install NVM**
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
```

---

### **2️⃣ Load NVM**
```bash
source ~/.bashrc
```

---

### **3️⃣ Install Node.js 14.17.0**
```bash
nvm install 14.17.0
```

---

### **4️⃣ Set default Node version**
```bash
nvm use 14.17.0
nvm alias default 14.17.0
```

---

### **5️⃣ Verify Versions**
```bash
node -v
npm -v
```

---

### **6️⃣ Install Node modules**
```bash
npm install
```

---

### **7️⃣ Start the frontend**
```bash
npm start
```

---

# 🐘 **PostgreSQL Installation & Setup**

## ▶️ **1️⃣ Install PostgreSQL 15**
```bash
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget -qO - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install postgresql-15 -y
```

---

## ▶️ **2️⃣ Configure PostgreSQL**

### **Login as postgres user**
```bash
sudo -i -u postgres
psql
```

---

### **Create Database & User**
```sql
CREATE DATABASE employee_db;
CREATE USER admin3 WITH PASSWORD '12345678';
```

---

### **Grant Privileges**
```sql
GRANT ALL PRIVILEGES ON DATABASE employee_db TO admin3;
\c employee_db
GRANT ALL ON SCHEMA public TO admin3;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin3;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin3;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO admin3;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON SEQUENCES TO admin3;
```

---

### **Exit**
```sql
\q
exit
```

---

## ▶️ **3️⃣ Set Environment Variables**
```bash
export DB_HOST=localhost
export DB_PORT=5432
export DB_NAME=employee_db
export DB_USER=admin3
export DB_PASSWORD=12345678
export ALLOWED_ORIGINS="*"
```

---

# ✅ **Project Ready!**
