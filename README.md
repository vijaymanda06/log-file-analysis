# Log File Analysis

## Project Overview
This project provides a shell script for analyzing server log files. It extracts IP addresses from the logs, counts the number of accesses by each IP, and identifies IPs that have accessed the server more than a specified threshold.

## Features
- **IP Extraction:** Extract all unique IP addresses from the server log file.
- **Access Count:** Count and display the number of times each IP address has accessed the server.
- **Threshold Alert:** Identify and alert for any IP addresses that access the server more than a predefined number of times.

## Prerequisites
- Linux or Unix-like operating system
- Access to server log files (e.g., `/var/log/nginx/access.log`)

## Installation
Clone this repository to your local machine using:
```bash
git clone https://github.com/yourusername/log-file-analysis.git
