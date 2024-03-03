#!/bin/bash
# __        __   __   ___  ___       ___  __
#|__) |  | / _` /__` |__  |__  |__/ |__  |__)
#|__) \__/ \__> .__/ |___ |___ |  \ |___ |  \
#                            by @kameshwadhai

# COLORS
RED="\e[31m"
RESET="\033[0m"
GREEN="\033[1;32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[95m"
CYAN="\e[36m"
DEFAULT="\e[39m"
BOLD="\e[1m"
NORMAL="\e[0m"

dependencies() {
    echo -e "${BOLD}${MAGENTA}Updating package lists\n${NORMAL}"
    sudo apt-get -y update
    sudo apt-get install -y git
    echo -e "${BOLD}${MAGENTA}\nInstalling programming languages${NORMAL}"

    echo -e "${CYAN}\nInstalling Python${NORMAL}"
    sudo apt-get install -y python3
    sudo apt-get install -y python3-pip
    sudo apt-get install -y python3-dnspython
    #It is suggested to uncomment this line if you are using AWS EC2.
    #sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED

    echo -e "${CYAN}\nInstalling GO${NORMAL}"
    sudo apt install -y golang
    export GOROOT=/usr/lib/go
    export GOPATH=~/go
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

    echo "export GOROOT=/usr/lib/go" >> ~/.bashrc
    echo "export GOPATH=~/go" >> ~/.bashrc
    echo "export PATH=$GOPATH/bin:$GOROOT/bin:$PATH" >> ~/.bashrc

    source ~/.bashrc

    echo -e "${CYAN}\nInstalling Cargo${NORMAL}"
    sudo apt install -y cargo

    echo -e "${CYAN}\nInstalling html2text${NORMAL}"
    sudo apt install -y html2text
}

installer() {
    # Create a tools folder in the home directory
    cd $HOME
    mkdir tools
    cd tools
    echo -e "${BOLD}${MAGENTA}\n\nInstalling repositories${NORMAL}"

    echo -e "${CYAN}\nCloning ASNLookup${NORMAL}"
    git clone https://github.com/yassineaboukir/Asnlookup
    cd Asnlookup
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning ssl-checker${NORMAL}"
    git clone https://github.com/narbehaj/ssl-checker
    cd ssl-checker
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning CloudEnum${NORMAL}"
    git clone https://github.com/initstring/cloud_enum
    cd cloud_enum
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning GitDorker${NORMAL}"
    git clone https://github.com/obheda12/GitDorker
    cd GitDorker
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning RobotScraper${NORMAL}"
    git clone https://github.com/robotshell/robotScraper.git

    echo -e "${CYAN}\nCloning nuclei-templates${NORMAL}"
    git clone https://github.com/projectdiscovery/nuclei-templates.git

    echo -e "${CYAN}\nCloning Corsy${NORMAL}"
    git clone https://github.com/s0md3v/Corsy.git
    cd Corsy
    pip3 install requests
    cd ..

    echo -e "${CYAN}\nCloning SecretFinder${NORMAL}"
    git clone https://github.com/m4ll0k/SecretFinder.git secretfinder
    cd secretfinder
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning CMSeek${NORMAL}"
    git clone https://github.com/Tuhinshubhra/CMSeeK
    cd CMSeeK
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning Arjun${NORMAL}"
    git clone https://github.com/s0md3v/Arjun.git
    cd Arjun
    sudo python3 setup.py install
    cd ..

    echo -e "${CYAN}\nCloning Shcheck${NORMAL}"
    git clone https://github.com/santoru/shcheck

    echo -e "${CYAN}\nCloning XSRFProbe${NORMAL}"
    git clone https://github.com/s0md3v/Bolt
    cd Bolt
    pip3 install -r requirements.txt
    cd ..

    echo -e "${CYAN}\nCloning anti-burl${NORMAL}"
    git clone https://github.com/tomnomnom/hacks
    cd hacks/anti-burl/
    go build main.go
    sudo mv main ~/go/bin/anti-burl
    cd ../..

    echo -e "${CYAN}\nCloning TheHarvester${NORMAL}"
    git clone https://github.com/laramies/theHarvester
    cd theHarvester
    python3 -m pip install -r requirements/base.txt
    cd ..

    echo -e "${CYAN}\nInstalling SqlMap${NORMAL}"
    git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev

    echo -e "${BOLD}${MAGENTA}\nInstalling tools${NORMAL}"

    echo -e "${CYAN}\nInstalling MailSpoof${NORMAL}"
    pip3 install mailspoof

    echo -e "${CYAN}\nInstalling Whois${NORMAL}"
    sudo apt install -y whois

    echo -e "${CYAN}\nInstalling Nslookup${NORMAL}"
    sudo apt install -y dnsutils

    echo -e "${CYAN}\nInstalling WhatWeb${NORMAL}"
    sudo apt-get install -y whatweb

    echo -e "${CYAN}\nInstalling Nmap${NORMAL}"
    sudo apt-get install -y nmap

    echo -e "${CYAN}\nInstalling Dirsearch${NORMAL}"
    sudo apt-get install -y dirsearch

}

githubd() {
    echo -e "${CYAN}\nInstalling Hakrawler${NORMAL}"
    go install github.com/hakluke/hakrawler@latest
    sudo cp ~/go/bin/hakrawler /usr/local/bin

    echo -e "${CYAN}\nInstalling anew${NORMAL}"
    go install github.com/tomnomnom/anew@latest
    sudo cp ~/go/bin/anew /usr/local/bin

    echo -e "${CYAN}\nInstalling gf${NORMAL}"
    go install github.com/tomnomnom/gf@latest
    sudo cp ~/go/bin/gf /usr/local/bin

    echo -e "${CYAN}\nInstalling gau${NORMAL}"
    go install github.com/lc/gau/v2/cmd/gau@latest
    sudo cp ~/go/bin/gau /usr/local/bin

    echo -e "${CYAN}\nInstalling waybackurls${NORMAL}"
    go install github.com/tomnomnom/waybackurls@latest
    sudo cp ~/go/bin/waybackurls /usr/local/bin

    echo -e "${CYAN}\nInstalling qsreplace${NORMAL}"
    go install github.com/tomnomnom/qsreplace@latest
    sudo cp ~/go/bin/qsreplace /usr/local/bin

    echo -e "${CYAN}\nInstalling Notify${NORMAL}"
    go install -v github.com/projectdiscovery/notify/cmd/notify@latest 
    sudo cp ~/go/bin/notify /usr/local/bin

    echo -e "${CYAN}\nInstalling Dalfox${NORMAL}"
    go install github.com/hahwul/dalfox/v2@latest 
    sudo cp ~/go/bin/dalfox /usr/local/bin

    echo -e "${CYAN}\nInstalling Aquatone${NORMAL}"
    wget -q https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
    unzip aquatone_linux_amd64_1.7.0.zip
    sudo mv aquatone /usr/bin/ 
    rm -rf aquatone* LICENSE.txt README.md
    sudo apt install -y chromium

    echo -e "${CYAN}\nInstalling Nuclei${NORMAL}"
    go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest 
    sudo cp ~/go/bin/nuclei /usr/local/bin

    echo -e "${CYAN}\nInstalling Subfinder${NORMAL}"
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest 
    sudo cp ~/go/bin/subfinder /usr/local/bin

    echo -e "${CYAN}\nInstalling HTTPX${NORMAL}"
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest 
    sudo cp ~/go/bin/httpx /usr/local/bin

    echo -e "${CYAN}\nInstalling Amass${NORMAL}"
    go install -v github.com/owasp-amass/amass/v3/...@master
    sudo cp ~/go/bin/amass /usr/local/bin

    echo -e "${CYAN}Installing SubJack\n${NORMAL}"
    go install -v github.com/haccer/subjack/...@master
    sudo cp ~/go/bin/subjack /usr/local/bin
}

banner() {
    clear
    printf "\n${RED}"
    printf "         ▄▄▄▄    █    ██   ▄████   ██████ ▓█████ ▓█████  ██ ▄█▀▓█████  ██▀███  \n"
    printf "        ▓█████▄  ██  ▓██▒ ██▒ ▀█▒▒██    ▒ ▓█   ▀ ▓█   ▀  ██▄█▒ ▓█   ▀ ▓██ ▒ ██▒\n"
    printf "        ▒██▒ ▄██▓██  ▒██░▒██░▄▄▄░░ ▓██▄   ▒███   ▒███   ▓███▄░ ▒███   ▓██ ░▄█ ▒\n"
    printf "        ▒██░█▀  ▓▓█  ░██░░▓█  ██▓  ▒   ██▒▒▓█  ▄ ▒▓█  ▄ ▓██ █▄ ▒▓█  ▄ ▒██▀▀█▄  \n"
    printf "        ░▓█  ▀█▓▒▒█████▓ ░▒▓███▀▒▒██████▒▒░▒████▒░▒████▒▒██▒ █▄░▒████▒░██▓ ▒██▒\n"
    printf "        ░▒▓███▀▒░▒▓▒ ▒ ▒  ░▒   ▒ ▒ ▒▓▒ ▒ ░░░ ▒░ ░░░ ▒░ ░▒ ▒▒ ▓▒░░ ▒░ ░░ ▒▓ ░▒▓░\n"
    printf "        ▒░▒   ░ ░░▒░ ░ ░   ░   ░ ░ ░▒  ░ ░ ░ ░  ░ ░ ░  ░░ ░▒ ▒░ ░ ░  ░  ░▒ ░ ▒░\n"
    printf "         ░    ░  ░░░ ░ ░ ░ ░   ░ ░  ░  ░     ░      ░   ░ ░░ ░    ░     ░░   ░ \n"
    printf "         ░         ░           ░       ░     ░  ░   ░  ░░  ░      ░  ░   ░     \n"
    printf "              ░                                                                \n"
    printf "\n${GREEN}"
    printf "                                                               by @kameshwadhai\n"
    printf "${RESET}"
    sleep 1
}

main() {
    banner
    dependencies
    installer
    githubd
}

while true
do
    main
    exit
done
