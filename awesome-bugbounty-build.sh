#!/bin/bash

# This script is created by Jin.

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\033[0;33m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}UPDATING${ENDCOLOR}"
sudo apt-get update -y
sudo apt-get full-upgrade -y

echo -e "${GREEN}INSTALLING DEPENDENCIES${ENDCOLOR}"
sudo apt-get install python3-pip -y
sudo apt-get install python-pip -y
sudo apt-get install docker.io -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install python-setuptools -y
sudo apt-get install libldns-dev -y
sudo apt-get install python-dnspython -y
sudo apt-get install git -y
sudo apt-get install rename -y
sudo apt-get install xargs -y
sudo apt-get install golang -y
sudo apt install nodejs 
sudo apt install npm
sudo apt install python3-pip
sudo pip3 install uro

echo -e "${GREEN}This Automate Script is made by ----------------${ENDCOLOR}${RED}0xJin${ENDCOLOR}${GREEN}-----------------${ENDCOLOR}"


echo -e "${GREEN}########################################################################################################################${ENDCOLOR}"

echo -e " ${YELLOW}█████╗${ENDCOLOR} ${YELLOW}██╗    ██╗${ENDCOLOR}${YELLOW}███████╗${ENDCOLOR}${YELLOW}███████╗ ██████╗ ███╗   ███╗███████╗    ██████╗ ██╗   ██╗ ██████╗ ██████╗  ██████╗ ██╗   ██╗███╗   ██╗████████╗██╗   ██╗"   
echo -e "${YELLOW}██╔══██╗${ENDCOLOR}${YELLOW}██║    ██║${ENDCOLOR}${YELLOW}██╔════╝${ENDCOLOR}${YELLOW}██╔════╝██╔═══██╗████╗ ████║██╔════╝    ██╔══██╗██║   ██║██╔════╝ ██╔══██╗██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝╚██╗ ██╔╝"    
echo -e "${YELLOW}███████║${ENDCOLOR}${YELLOW}██║ █╗ ██║${ENDCOLOR}${YELLOW}█████╗${ENDCOLOR}  ${YELLOW}███████╗██║   ██║██╔████╔██║█████╗      ██████╔╝██║   ██║██║  ███╗██████╔╝██║   ██║██║   ██║██╔██╗ ██║   ██║    ╚████╔╝ "    
echo -e "${YELLOW}██╔══██║${ENDCOLOR}${YELLOW}██║███╗██║${ENDCOLOR}${YELLOW}██╔══╝${ENDCOLOR}  ${YELLOW}╚════██║██║   ██║██║╚██╔╝██║██╔══╝      ██╔══██╗██║   ██║██║   ██║██╔══██╗██║   ██║██║   ██║██║╚██╗██║   ██║     ╚██╔╝ "     
echo -e "${YELLOW}██║  ██║${ENDCOLOR}${YELLOW}╚███╔███╔╝${ENDCOLOR}${YELLOW}███████${ENDCOLOR}╗${YELLOW}███████║╚██████╔╝██║ ╚═╝ ██║███████╗    ██████╔╝╚██████╔╝╚██████╔╝██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║   ██║      ██║ "      
echo -e "${YELLOW}╚═╝  ╚═╝${ENDCOLOR} ${YELLOW}╚══╝╚══╝${ENDCOLOR}${YELLOW}╚══════╝${ENDCOLOR}${YELLOW}╚══════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝    ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝      ╚═╝ "      
                                                                                                                                                      
echo -e                                        "██████╗ ██╗   ██╗██╗██╗     ██████╗ ███████╗██████╗"                                                           
echo -e                                        "██╔══██╗██║   ██║██║██║     ██╔══██╗██╔════╝██╔══██╗"                                                          
echo -e                                        "██████╔╝██║   ██║██║██║     ██║  ██║█████╗  ██████╔╝"                                                          
echo -e                                        "██╔══██╗██║   ██║██║██║     ██║  ██║██╔══╝  ██╔══██╗"                                                          
echo -e                                        "██████╔╝╚██████╔╝██║███████╗██████╔╝███████╗██║  ██║"                                                          
echo -e                                        "╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═╝"

echo -e "${GREEN}########################################################################################################################${ENDCOLOR}"

mkdir ~/Bugbounty
cd ~/Bugbounty/

# Install amass for find subdomains.

echo -e "${RED}Installation of AMASS OHMYGOD!${ENDCOLOR}"
sudo apt-get install amass
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("AMASS")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for scan every subdomain..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install HTTPX for see if someone is alive.

echo -e "${RED}Installation of HTTPX!${ENDCOLOR}"
git clone https://github.com/projectdiscovery/httpx.git
cd httpx/
cd cmd/
cd httpx/
go build
sleep 5
cp httpx /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("HTTPX")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for see host alive..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install GauPlus for extract WB Machines URL's.

echo -e "${RED}Gauplus for extract wayback machine URL'S${ENDCOLOR}" 
git clone https://github.com/bp0lr/gauplus.git
cd gauplus/
go build
cp gauplus /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Gauplus")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for extract URL's..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install KXSS for find XSS vulnerabilities.

echo -e "${RED}AHAHA This tool is AWESOME , You think i can't pwn your user?${ENDCOLOR}"
git clone https://github.com/Emoe/kxss.git
cd kxss/
go build
cp kxss /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("KXSS")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for pwn all users with XSS..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install SQLMAP for exploit SQL Injection vulnerabilities.

echo -e "${RED}GOOD BYE at your DATABASE${ENDCOLOR}"
sudo apt-get install sqlmap   
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("SQLMAP")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for pwn your database..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install evilwinrm

echo -e "${RED}This tool will get full access in windows${ENDCOLOR}"
git clone https://github.com/Hackplayers/evil-winrm.git
cd evil-winrm/
gem install evil-winrm
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Evil-Winrm")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for pwn your Windows users..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install Arjun

echo -e "${RED}Arjun is powerfull tool for find parameter in a website${ENDCOLOR}"
git clone https://github.com/s0md3v/Arjun.git
cd Arjun/
chmod +x arjun.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Arjun")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for fuzzing parameters..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install NoSQLMap 

echo -e "${RED}Tool for hacking MongoDB${ENDCOLOR}"
git clone https://github.com/codingo/NoSQLMap.git
cd NoSQLMap/
sudo python setup.py install
sudo systemctl enable docker --now
sudo docker build -t nosqlmap .
sudo docker-compose build 
sudo docker-compose run nosqlmap
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("MongoDB")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for pwn your non-relational DB..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install Sublist3r

echo -e "${RED}Tool for find subdomains if you don't like amass${ENDCOLOR}"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r/
sudo pip install -r requirements.txt
sudo apt-get install python-requests
sudo pip install requests
sudo pip install argparse
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Sublister")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find other good subdomains..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install RustScan
echo -e "${RED}Tool for network scanning better than nmap${ENDCOLOR}"
alias rustscan='docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Intall NMAP

echo -e "${RED}Tool for network scanning${ENDCOLOR}"
sudo apt-get install nmap
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Install wapiti
echo -e "${RED}Tool for web application vulnerability scanner${ENDCOLOR}"
sudo apt-get install wapiti
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Install nikto

echo -e "${RED}Tool for find CGI vulnerabilities${ENDCOLOR}"
sudo apt-get install nikto
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Install hydra 

echo -e "${RED}HYDRA Tool for bruteforce${ENDCOLOR}"
git clone https://github.com/vanhauser-thc/thc-hydra.git
cd thc-hydra/
./configure
sudo make install
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Hydra")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for bruteforce everything..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install Utility Commands

sudo apt-get install binutils
echo -e "${GREEN}Successfully${ENDCOLOR}"


# Install php-reverse-shell.php

git clone https://github.com/pentestmonkey/php-reverse-shell.git
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Powerfull tool for scanning website

echo -e "${RED}FUFF for bruteforcing directories${ENDCOLOR}"
git clone https://github.com/ffuf/ffuf
cd fuff/
go get
go build
cp ffuf /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("FFUF")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for fuzzing directories..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install gobuster

echo -e "${RED}GOBUSTER Another tool for Bruteforce directories${ENDCOLOR}"
apt-get install gobuster
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Installing Seclists

echo -e "${RED}Installing SECLISTS Best wordlists here${ENDCOLOR}"
git clone https://github.com/danielmiessler/SecLists.git
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Install hash-identifier

echo -e "${RED}Powerfull tool for find hashes${ENDCOLOR}"
sudo apt-get install hash-identifier
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Install john the ripper

echo -e "${RED}JOHN THE RIPPER best tool for cracking password${ENDCOLOR}"
apt-get install john
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("John")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for crack all hashes..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install XSSMAP for find XSS vulnerabilities in automate.

echo -e "${RED}Install XSSMAP for find XSS vulnerabilities in automate${ENDCOLOR}"
git clone -b master https://github.com/Jewel591/xssmap.git
cd xssmap
pip3 install -r requirements.txt
chmod +x xssmap.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("XSSMAP")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find xss vulnerabilities..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

#Install GF powerfull tool for find parameters.

echo -e "${RED}Installing GF e PATTERNS for find parameters${ENDCOLOR}"
go install -v github.com/tomnomnom/gf@latest
git clone https://github.com/1ndianl33t/Gf-Patterns
cd ~/go/bin
cp gf /usr/local/bin
mkdir /root/.gf
cd ~/Bugbounty/
cd /gf/examples
cp * /root/.gf
cd ~/Bugbounty/Gf-Patterns
cp * /root/.gf
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("GF")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find all parameters vulnerable..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing 403 Bypass.

echo -e "${RED}403 Bypass tool${ENDCOLOR}"
git clone https://github.com/iamj0ker/bypass-403.git
cd bypass-403/
chmod +x bypass-403.sh
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("403 Bypass")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for BYPASS everything..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install Smuggler for find HTTP-Request-Smuggling vulns.

echo -e "${RED}HTTP-request smuggling vulns.${ENDCOLOR}"
git clone https://github.com/defparam/smuggler.git
cd smuggler/
chmod +x smuggler.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Smuggler")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find http-request smuggling vuln..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Istall API keys Scanner.

echo -e "${RED}Installing Api scanner for find Api-keys vulnerable${ENDCOLOR}"
git clone https://github.com/ozguralp/gmapsapiscanner.git
cd gmapsapiscanner/
chmod +x maps_api_scanner_python3.py
chmod +x maps_api_scanner.py 
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Api-keys scanner")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for check if api-keys if vulnerable..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Install SSRF MAP for find SSRF vulnerabilities.

echo -e "${RED}Installing SSRF MAP for fins Server side vulnerabilities${ENDCOLOR}"
git clone https://github.com/swisskyrepo/SSRFmap
cd SSRFmap/
pip3 install -r requirements.txt
chmod +x ssrfmap.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("SSRF map scanner")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for check SSRF vulnerabilities..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing qsreplace tool

echo -e "${RED}Installing qsreplace for change words as we want!${ENDCOLOR}"
go install -v github.com/tomnomnom/qsreplace@latest
cd ~/go/bin
cp qsreplace /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("Qsreplace")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for generate some words..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing TPLMAP for find SSTI vulnerabilities.

echo -e "${RED}Installing TPLmap for find SSTI vulnerabilities${ENDCOLOR}"
git clone https://github.com/epinna/tplmap.git
cd tplmap/
chmod +x tplmap.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("TPLmap")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find SSTI vulns..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing exiftool.

echo -e "${RED}Installing exiftool for inject payload in image${ENDCOLOR}"
sudo apt-get install exiftool
echo -e "${GREEN}Successfully${ENDCOLOR}"

# Installing commix for command injection.

echo -e "${RED}Installing COMMIX for command injection${ENDCOLOR}"
sudo apt-get install commix
echo -e "${GREEN}Successfully${ENDCOLOR}"

echo -e "${GREEN}DONE.. All tool are installed corretly${ENDCOLOR}"

# Installing CSRF Tool

echo -e "${RED}Installing XSRF tool${ENDCOLOR}"
git clone https://github.com/0xInfection/XSRFProbe.git
cd XSRFProbe/
python3 setup.py install
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("CSRF TOOL")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find csrf vulns..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing Paramspider tool

echo -e "${RED}Installing PARAMSPIDER tool for find vulnerable parameters${ENDCOLOR}"
git clone https://github.com/devanshbatham/ParamSpider.git
cd ParamSpider/
pip3 install -r requirements.txt
chmod +x paramspider.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("paramspider")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find Parameters to exploit..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing XXE Exploiter

echo -e "${RED}Installing XXE exploiter tool for find xxe vulns${ENDCOLOR}"
git clone https://github.com/luisfontes19/xxexploiter.git
cd xxexploiter/
npm install -g xxexploiter
npm install
npm run build
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("XXE EXPLOITER")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} for find XXE vulns..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing RUSH

echo -e "${RED}Installing RUSH TOOL${ENDCOLOR}"
git clone https://github.com/shenwei356/rush.git
cd rush/
go build
cp rush /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("RUSH")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} i'm more fast then parallel..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing LFISuite tool

echo -e "${RED}Installing LFI TOOL${ENDCOLOR}"
git clone https://github.com/D35m0nd142/LFISuite.git
cd LFISuite/
chmod +x lfisuite.py
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("LFISuite")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} i want find ../../../../../etc/passwd..."
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing NUCLEI + Template

echo -e "${RED}Installing NUCLEI TOOL + TEMPLATE${ENDCOLOR}"
apt-get install nuclei
git clone https://github.com/projectdiscovery/nuclei-templates.git
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("NUCLEI")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} i want find all CVES"
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing Freq

echo -e "${RED}Installing FREQ TOOL${ENDCOLOR}"
go install -v github.com/takshal/freq@latest
cd ~/go/bin
cp freq /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("FREQ")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} I want find SQLI and XSS"
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop

# Installing SUBZY
echo -e "${RED}Installing SUBZY TOOL${ENDCOLOR}"
go install -v github.com/lukasikic/subzy@latest
cd ~/go/bin
cp subzy /usr/local/bin
cd ~/Bugbounty/
echo -e "${GREEN}Successfully${ENDCOLOR}"

. <(curl -sLo- "https://git.io/progressbar")

bar::start

StuffToDo=("SUBZY")

TotalSteps=${#StuffToDo[@]}

for Stuff in ${StuffToDo[@]}; do
  # Do stuff
  echo "Create ${Stuff} I want takeover all subdomains"
  StepsDone=$((${StepsDone:-0}+1))
  bar::status_changed $StepsDone $TotalSteps
  sleep 1
done

bar::stop




echo -e "${GREEN}This Automate Script is made by ----------------${ENDCOLOR}${RED}0xJin${ENDCOLOR}${GREEN}-----------------${ENDCOLOR}"



echo -e "     ${GREEN}██╗██╗███╗   ██╗${ENDCOLOR}"
echo -e "     ${GREEN}██║██║████╗  ██║${ENDCOLOR}"
echo -e "     ${GREEN}██║██║██╔██╗ ██║${ENDCOLOR}"
echo -e "${GREEN}██   ██║██║██║╚██╗██║${ENDCOLOR}"
echo -e "${GREEN}╚█████╔╝██║██║ ╚████║${ENDCOLOR}"
echo -e " ${GREEN}╚════╝ ╚═╝╚═╝  ╚═══╝${ENDCOLOR}"

echo -e "${GREEN}I HOPE YOU WILL GET SO MUCH MONEY FROM BUG BOUNTY :-)${ENDCOLOR}"
