# bind9_alpine
Docker based on the latest Alpine and official BIND9 Alpine package  
Creates a very small name server container, that listens on port53  
and port953/tcp for rndc based control. exports /etc/bind for configuration  
and /var/bind to store zone data  

generate the root hints file manually in your /var/bind directory

dig +bufsize=1200 +norec NS . @a.root-servers.net > /var/bind/named.root
or
wget --user=ftp --password=ftp ftp://ftp.rs.internic.net/domain/db.cache -O /var/bind/named.root

