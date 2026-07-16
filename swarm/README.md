# DOCKER SWARM


```
Docker swarm is an orchestration system by docker. it has manager notes (EC2 instances) which manages worker notes and worker notes (EC2 instances). Inside worker notes runs our applications (mysql,redis,wordpress etc.). 
We need to create worker notes by 1 by and attach it to manages notes. Attachment code is in install.sh.
```
### In real world
```
A common architecture looks like this:
                    AWS
                      │
          Auto Scaling Group
      (maintains 3 EC2 workers)
                      │
      ┌───────────────┼───────────────┐
      │               │               │
   Worker1         Worker2         Worker3
         \            |            /
          \           |           /
             Docker Swarm
                  │
             Manager Node
```
