# SaltStack-examples


*Configuration saltstack master*
```bash
vim /etc/salt/master
file_roots:
  centos:
    - /srv/SaltStack-examples/centos
  windows:
    - /srv/SaltStack-examples/windows
```

*Create directory for SaltStack examples*
```bash
cd /srv
git clone https://github.com/rootsh/SaltStack-examples.git
```

*List keys using salt-key*
```bash
[root@saltstack srv]# salt-key -L
Accepted Keys:
Denied Keys:
Unaccepted Keys:
saltstack.laner.co
Rejected Keys:
```
*Accept keys of hosts*
```bash
[root@saltstack srv]# salt-key -A -y
The following keys are going to be accepted:
Unaccepted Keys:
saltstack.laner.co
Key for minion saltstack.laner.co accepted.
```
