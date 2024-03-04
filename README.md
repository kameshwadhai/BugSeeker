# BugSeeker: Automated Reconnaissance and Vulnerability Discovery Toolkit

## Description:
BugSeeker is a powerful Automated Reconnaissance and Vulnerability Discovery Toolkit designed to enhance the capabilities of bug hunters. This toolkit streamlines the traditionally time-consuming reconnaissance phase, enabling users to dedicate more time to efficiently analyzing potential vulnerabilities. Going beyond conventional tools, BugSeeker actively identifies a wide range of vulnerabilities, such as Reflected XSS, Open Redirection, SQL Injection, HTML Injection, SSRF, CSRF, and CORS.


![BugSeeker -help](https://github.com/kameshwadhai/BugSeeker/assets/81626655/a6f1be40-0eab-4a45-8118-00d2edd67805)

## Features:
- **Automated Reconnaissance:** BugSeeker excels in automating the reconnaissance phase, reducing manual effort and increasing efficiency.
- **Diverse Vulnerability Detection:** Actively seeks out various vulnerabilities, including Reflected XSS, Open Redirection, SQL Injection, HTML Injection, SSRF, CSRF, and CORS.
- **Multifunctional Web Recon & Vulnerability Scanner:** Combining the functionalities of a web reconnaissance tool and a vulnerability scanner makes BugSeeker a versatile and powerful tool for security assessment.
- **User-Friendly Interface:** BugSeeker's user-friendly interface ensures accessibility for both beginners and experienced bug hunters, facilitating ease of use.
- **Customizable Scans:** The ability to tailor the toolkit to specific needs through customizable scans allows users to focus on particular vulnerabilities, adding flexibility to the tool.

## System Requirements:
BugSeeker is recommended to run on an AWS EC2 Debian instance or any Linux distribution.

## Installation:
To install BugSeeker, follow these simple steps:

```bash
git clone https://github.com/kameshwadhai/BugSeeker.git
cd BugSeeker
chmod +x install.sh BugSeeker.sh
./install.sh
```

## Usage:
```bash
./BugSeeker.sh -h
```

## Examples:
```bash
./BugSeeker.sh -d example.com -a      # Full Scan
./BugSeeker.sh -d example.com -p      # Passive reconnaissance
./BugSeeker.sh -d example.com -x      # Active reconnaissance
./BugSeeker.sh -d example.com -v      # Check Vulnerabilities only
```

## Tools:
- **Passive Reconnaissance:**
   - Whois Lookup
   - Nslookup
   - ASN Lookup
   - WhatWeb
   - SSL Checker
   - Aquatone
   - TheHarvester
   - CloudEnum
   - GitDorker

- **Active Reconnaissance:**
   - RobotScraper
   - Hakrawler
   - Gau 
   - Arjun
   - Secrets Finder
   - DirSearch
   - Nmap

- **Vulnerability Scanning:**
   - Shcheck
   - Mailspoof
   - Subjack
   - Corsy
   - 403bypass
   - Bolt
   - Qsreplace
   - Httpx
   - Gf
   - Dalfox
   - Sqlmap
   - Nuclei

If you have specific questions or if there's anything specific you'd like assistance with regarding this script, feel free to let me know!
Thank you for using BugSeeker!
