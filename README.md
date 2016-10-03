# bind9_alpine
Docker based on the latest Alpine and official BIND9 Alpine package
Creates a very small name server container, that listens on port53
and port953/tcp for rndc based control. exports /etc/bind for configuration
and /var/bind to store zone data

$ docker images  
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE  
bind9_alpine        0.1                 575b48c90261        2 minutes ago      12.47 MB  
