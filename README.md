# 🖥️ Server Stats Script

A simple and lightweight **Bash script** to analyze key Linux server performance metrics.  
Works perfectly on **Ubuntu** or **any Linux system** (including WSL on Windows 💻).

---

## ⚙️ Features

✅ Displays:
- **CPU usage** (total utilization)
- **Memory usage** (used vs total with %)
- **Disk usage** (used vs total with %)
- **Top 5 CPU-hogging processes**
- **Top 5 memory-hogging processes**
- **Logged-in users**
- **OS version, uptime, and load average**

---

## 🧩 Requirements

Make sure the following utilities are installed (most come preinstalled):

```bash
sudo apt install sysstat -y     # for mpstat
sudo apt install coreutils -y   # for df, free, ps, awk
```

## Getting Started
1. **Clone the repository**
    ```
    git clone https://github.com/aadyanair/server-performance-stats.git
    cd server-performance-stats
    ```

2. **Make the script executable**
    ```
    chmod +x server-stats.sh
    ```
3. **Execute the script**  
    ```
    ./server-stats.sh
    ```
This project is part of [roadmap.sh](https://roadmap.sh/projects/server-stats) DevOps projects.
