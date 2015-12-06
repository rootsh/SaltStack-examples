# Disable SELINUX
/etc/selinux/config:
  file.managed:
    - source: salt://common/files/selinux.conf


#Disable firewall
{% if grains['osrelease'].startswith('6') %}
iptables:
  service.dead:
    - disabled: True

ip6tables:
  service.dead:
    - disabled: True
{% endif %}

# Disable firewalld
{% if grains['osrelease'].startswith('7') %}
firewalld:
  service.dead:
    - disabled: True

forcediasble:
  cmd.run:
    - name: systemctl disable firewalld
    - onlyif: systemctl status firewalld | grep Loaded | grep enabled

{% endif %}
