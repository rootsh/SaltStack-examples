/etc/sysconfig/selinux:
  file.sed:
    - before: 'enforcing'
    - after: 'disabled'
    - limit: '^SELINUX='

{% if grains['osrelease'].startswith('6') %}
iptables:
  service.dead:
    - disabled: True

ip6tables:
  service.dead:
    - disabled: True
{% endif %}

{% if grains['osrelease'].startswith('7') %}
firewalld:
  service.dead:
    - disabled: True
{% endif %}
