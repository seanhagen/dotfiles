Postfix Config
==============

1. Copy all this to /etc/postfix
2. Create a file called sasl_passwd in /etc/postfix
3. Contents:
   For each email account -> `full.address@server.com username:password`
   Example Gmail: `sean.hagen@gmail.com sean.hagen:some2fapass`
   Example Google Domain email: `sean@seanhagen.ca sean@seanhagen.ca:some2fapass`
4. Run `postmap` on sasl_passwd and sender_relay
   
