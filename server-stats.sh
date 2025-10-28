#!/bin/bash

echo "-------------------------------------------"
echo "💻 SERVER PERFORMANCE STATS"
echo "-------------------------------------------"

# OS and uptime
echo "OS Version: $(lsb_release -d | cut -f2)"
echo "Uptime: $(uptime -p)"
echo "Load Average: $(uptime | awk -F'load average:' '{ print $2 }')"
echo "-------------------------------------------"

# CPU usage
echo "🔷 Total CPU Usage"
mpstat | awk '$12 ~ /[0-9.]+/ { print 100 - $12"%"}'
echo "-------------------------------------------"

# Memory usage
echo "🔷 Memory Usage:"
free -h | awk '/Mem/ {printf "Used: %s / Total: %s (%.2f%%)\n", $3, $2, $3/$2*100}'
echo "-------------------------------------------"

# Disk usage
echo "🔷 Disk Usage" 
df -h --total | grep total | awk '{printf "Used: %s / TOtal: %s (%s)\n", $3, $2, $5}'
echo "-------------------------------------------"

# Top 5 CPU-consuming processes
echo "🔷 Top 5 Processes by CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo "-------------------------------------------"

# Top 5 Memory-consuming processes
echo "🔷 Top 5 Processes by Memory:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
echo "-------------------------------------------"

# Stretch goals
echo "🔷 Logged-in users:"
who | awk '{print $1}' | sort | uniq
echo "-------------------------------------------"

echo "📊 Report generated on: $(date)"
