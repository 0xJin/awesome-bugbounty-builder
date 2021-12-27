# Awesome Bug Bounty Builder

[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/0xJin/awesome-bugbounty-builder/issues)


Awesome Bug bounty builder Project


![bb](https://user-images.githubusercontent.com/81621963/147457586-79ac41eb-f995-455b-a144-f80a5783047a.PNG)


---

### Installation

```
$ git clone https://github.com/0xJin/awesome-bugbounty-builder.git
$ cd awesome-bugbounty-builder/
$ chmod +x awesome-bugbounty-builder.sh
$ ./awesome-bugbounty-builder.sh
```


### Which tools You will find here

> Amass -
> Sublister -
> Gauplus -
> httpx -
> gf + patterns -
> kxss -
> sqlmap -
> commix -
> tplmap -
> hydra -
> john the ripper -
> evilwinrm -
> Arjun -
> Paramspider -
> NoSQLmap -
> NMAP -
> nikto -
> FFUF -
> 403-Bypass -
> Gobuster -
> Seclists -
> Hash-identifier -
> XSSMAP -
> Smuggler -
> SSRFmap -
> gmapsapiscanner -
> qsreplace -
> exiftool -
> XSRFProbe 


### Bug Bounty TIPS and Usage of tools + One Liner TIPS


# One liner *RECON* for FUZZ XSS

```
$ amass enum -brute -passive -d example.com | httpx -silent -status-code | tee domain.txt
$ cat domain.txt | gauplus -random-agent -t 200 | gf xss | kxss | tee domain2.txt
```

# 
