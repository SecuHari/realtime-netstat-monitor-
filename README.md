# 🖥️ Real-Time Network Connection Monitor (Linux)

![License](https://img.shields.io/badge/license-MIT-green)
![Bash](https://img.shields.io/badge/script-Bash-blue)
![Status](https://img.shields.io/badge/status-Active-success)

---

## 📌 Project Overview
**Real-Time Network Connection Monitor** is a Linux-based monitoring tool created by **Hareesh Kumar** using **Bash scripting**.  
This project allows system administrators and network engineers to monitor live network activity in real time, including:
- The total number of active TCP & UDP connections
- The top 5 most frequent remote IP addresses
- All currently listening ports

The monitor refreshes automatically every **2 seconds**, making it ideal for real-time diagnostics and security auditing.

---

## ✨ Features
- 📊 **Real-time** TCP/UDP connection tracking
- 🔍 Identify the **top 5** most connected IPs
- 📡 Detect all **listening ports**
- 🖥 Compatible with **all major Linux distributions**
- 🛠 Lightweight — requires only `netstat` and basic shell tools
- 🎯 Easy to set up and run

---

## 🛠 Requirements
Ensure your system has:
- **Bash shell**
- `net-tools` package (for `netstat`)
- Basic terminal access

To install `net-tools`:
```bash
sudo apt update && sudo apt install net-tools -y    # Debian/Ubuntu
sudo yum install net-tools -y                        # CentOS/RHEL
```

---

## 📥 Installation
```bash
# Clone the repository
git clone <your-repo-link>

# Navigate to the project folder
cd realtime-netstat-monitor

# Grant execution permission
chmod +x monitor.sh
```

---

## 🚀 Usage
Run the monitor with:
```bash
./monitor.sh
```
To stop monitoring:
```
CTRL + C
```

---

## 📖 How It Works
1. **`netstat -ant`** lists active TCP/UDP connections.
2. **`awk` + `sort` + `uniq`** filter and count the most common remote IP addresses.
3. **Listening ports** are extracted from connections in the `LISTEN` state.
4. Output updates every 2 seconds via a loop.

---

## 🖼 Sample Output
```
🌐 Total Active Connections:
TCP: 7 | UDP: 0 | Total: 7

📊 Top 5 Most Frequent IPs:
    4 192.168.0.101
    3 8.8.8.8
    1 203.0.113.25

🔊 Listening Ports:
22 80 443
```

---

## 🎥 Demo Video
A recorded demonstration of the project is included in this repository.  
[📺 Watch Demo Video](demo.mp4)

---

## 📂 Project Structure
```
realtime-netstat-monitor/
│── monitor.sh     # Main script
│── demo.mp4       # Demo video
│── README.md      # Documentation
```

---

## 📜 License
Licensed under the **MIT License** — free for personal and commercial use.

---

## 🧑‍💻 Author
**Hareesh Kumar**  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/hareesh-kumar-02045a339/)  
🔗 [Instagram Profile](https://www.instagram.com/secuhari?igsh=MW5nMGk4Nm8wZ3Q5dA==)  

