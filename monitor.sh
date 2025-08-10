  GNU nano 8.1                                                                                          monitor.sh                                                                                                    
#!/bin/bash
# Real-Time Network Connection Monitor
# Author: Hareesh Kumar
# Date: $(date +"%2025-%August-%09")

clear_screen() {
    tput clear
}

while true
do
    clear_screen
    echo "Total Active Connections:"
    total=$(netstat -ant | tail -n +3 | wc -l)
    tcp=$(netstat -ant | grep -c '^tcp')
    udp=$(netstat -ant | grep -c '^udp')
    echo -e "\033[92mTCP: $tcp\033[0m | \033[94mUDP: $udp\033[0m | Total: $total"
    echo

    echo "Top 5 Most Frequent IPs:"
    netstat -ant | awk 'NR>2 {print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head -5
    echo

    echo " Listening Ports:"
    netstat -ant | awk '/LISTEN/ {split($4,a,":"); print a[2]}' | sort -n | uniq | tr '\n' ' '
    echo -e "\n"

    sleep 2
done

