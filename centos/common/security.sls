disable:
    selinux.mode

{% elif grains['osrelease'].startswith('6') %}
iptables:
  service.dead:
    - disabled: True

ip6tables:
  service.dead:
    - disabled: True
{% endif %}

{% elif grains['osrelease'].startswith('7') %}
firewalld:
  service.dead:
    - disabled: True
{% endif %}
