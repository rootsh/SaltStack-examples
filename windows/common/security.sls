# Disable firewall
win_firewall:
  - cmd.run:
    - name: netsh advfirewall set allprofiles state off
    - unless: if( netsh advfirewall show privateprofile | Select-String State | Select-String OFF ) { exit 1 } else { exit 0 }
    - shell: powershell
