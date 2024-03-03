# BugSeeker: Automated Reconnaissance and Vulnerability Discovery Toolkit

## Description:
BugSeeker is a versatile Automated Reconnaissance and Vulnerability Discovery Toolkit designed to accelerate the process of identifying and addressing security weaknesses. This tool goes beyond traditional reconnaissance by actively searching for a myriad of vulnerabilities, making it an invaluable asset for bug hunters. With a focus on speed and efficiency, BugSeeker checks for vulnerabilities such as Reflected XSS, Open Redirection, SQL Injection, HTML Injection, SSRF, CSRF, and CORS.

![BugSeeker -help](https://github.com/kameshwadhai/BugSeeker/assets/81626655/a6f1be40-0eab-4a45-8118-00d2edd67805)

## Features:
- **Multifunctional Web Recon & Vulnerability Scanner:** BugSeeker combines the functionality of a web reconnaissance tool and a vulnerability scanner for a comprehensive security assessment.
- **Fast Crawler:** Utilizes an incredibly fast crawler to efficiently find multiple vulnerabilities and gather information.
- **Multi-threaded Crawling:** Enhances scanning speed through multi-threaded crawling capabilities.
- **Vulnerability Checks:** Scans for a variety of vulnerabilities, including Reflected XSS, Open Redirection, SQL Injection, HTML Injection, SSRF, CSRF, and CORS.
- **Subdomain Enumeration:** Identifies subdomains to provide a complete picture of the attack surface.
- **Information Gathering:** Collects information such as Web IP Address, Server IP Address, Cname Records, DNS lookup, SPF lookup, Hidden IP, API Endpoints, JS Endpoints, XSS Endpoints, and more.
- **JS Library Vulnerability Detection:** Identifies vulnerable JavaScript libraries in the target environment.
- **Directory Search:** Searches for directories on the target website, aiding in the discovery of potential vulnerabilities.
- **User-friendly:** Designed for ease of use with clear command-line options and prompts.

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
After installation, you can run BugSeeker using the following command:

```bash
./BugSeeker.sh
```

Follow the on-screen prompts to configure your reconnaissance and vulnerability discovery scans. BugSeeker will then automate the process, providing a comprehensive report of identified vulnerabilities.

## Examples:
```bash
./BugSeeker.sh -d example.com -a      # Full Scan
./BugSeeker.sh -d example.com -p      # Passive reconnaissance
./BugSeeker.sh -d example.com -a      # Active reconnaissance
./BugSeeker.sh -d example.com -m      # Massive recon
./BugSeeker.sh -d example.com -r      # Active and passive reconnaissance
./BugSeeker.sh -d example.com -v      # Check Vulnerabilities only
```

Thank you for using BugSeeker! If you have any questions or need further assistance, please don't hesitate to ask.
