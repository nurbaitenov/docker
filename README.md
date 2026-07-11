# DOCKER

### Docker Network

```
A Port is a logical communication endpoint on a computer. It allows multiple applications to use the same IP address without interfering with each other.

Think of it like this:

IP address = the apartment building.
Port = the apartment number.
Application = the person living in that apartment.

If someone knows only the building address (IP), they still need the apartment number (port) to reach the correct person (application).
```



#### Docker has most 4 types: brigde, host, none and overlay.
Docker networking is how containers communicate with:
- each other,
- the Docker host,
- the outside world.

#### 1) Bridge
```
Bridge network is default and most common. 
Containers on the same bridge network can communicate with each other using their IP addresses or container names (on user-defined bridges).

by default from outside we cannot acces to container until we publish a port

docker run -d -p 80:80 nginx

host number(outside port) : container port (bridge port 80)

EC2 Security Group opens port 80 and docker bridge port 80 connects each other then we can acces to container

Internet
      |
18.234.176.89
      |
EC2 Security Group
      |
Host Port 80
      |
Docker Bridge
      |
WordPress Container
Port 80

```

#### 2) Host
```
It doesn't have own private IP, own network.
It uses host's network directly.
No need to direct to port.
It's Ip is same as in EC2 IP.

Host network is used for specific situations like high performance with no latency in monitoring (Prometheus, Grafana) and network monitoring etc. 
```

#### 3) None networking
```
It has no internet, no access from outside, on connection with other container. 

It only has localhost interface.

Why do companies need it? Some companies run sensitive workloads that should never communicate with anything over the network. For encryted files and keys and secret files.
```

#### 4) Overlay
```
The overlay network is one of the most important concepts when you move from one Docker server to multiple Docker servers.

Bridge network works only in one host.
Overlay works in multiple hosts, connecting each other. Example: I have MYSQL in EEC2 instance and I have another EC2 instance running Wordpress. I need to commincate each other with overlay network.

Containers communicate by name

Overlay uses in Docker Swarm.
```