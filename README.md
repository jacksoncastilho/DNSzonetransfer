# DNSzonetransfer

```bash
for ns in $(host -t ns site.com.br | cut -d " " -f 4); do; host -a site.com.br $ns; echo "\n###########################################\n";done;
```

```
┌──(kali㉿kali)-[~/Documents/]
└─$ for ns in $(host -t ns businesscorp.com.br | cut -d " " -f 4); do; host -a businesscorp.com.br $ns; echo "\n###########################################\n";done;
Trying "businesscorp.com.br"
Using domain server:
Name: ns2.businesscorp.com.br.
Address: 37.59.174.226#53
Aliases:

;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 31753
;; flags: qr aa rd; QUERY: 1, ANSWER: 7, AUTHORITY: 0, ADDITIONAL: 3

;; QUESTION SECTION:
;businesscorp.com.br.           IN      ANY

;; ANSWER SECTION:
businesscorp.com.br.    3600    IN      SOA     ns1.businesscorp.com.br. hostmaster.businesscorp.com.br. 2019030507 3600 900 604800 1
businesscorp.com.br.    3600    IN      NS      ns1.businesscorp.com.br.
businesscorp.com.br.    3600    IN      NS      ns2.businesscorp.com.br.
businesscorp.com.br.    3600    IN      A       37.59.174.225
businesscorp.com.br.    3600    IN      HINFO   "SERVIDOR DELL" "DEBIAN - key:0989201883299"
businesscorp.com.br.    3600    IN      MX      10 mail.businesscorp.com.br.
businesscorp.com.br.    3600    IN      TXT     "v=spf1 include:key-9283947588214 ?all"

;; ADDITIONAL SECTION:
ns1.businesscorp.com.br. 3600   IN      A       37.59.174.225
ns2.businesscorp.com.br. 3600   IN      A       37.59.174.226
mail.businesscorp.com.br. 3600  IN      A       37.59.174.227

Received 308 bytes from 37.59.174.226#53 in 224 ms

###########################################
```
