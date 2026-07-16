curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker 
sudo systemctl enable docker 
systemctl status docker 


# this code is for when you what to attach worker notes to Docker Swarm manager notes 
# docker swarm join --token SWMTKN-1-3ntfrsun6n33du59fsf1tjqhvwp67c8ejsysg0skf4wr46x2fw-7sxsjqhmjmtd4pt8o4b8by3f5 172.31.39.40:2377
