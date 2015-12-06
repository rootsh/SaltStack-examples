# Disable firewall
# Disable firewall
Windows Firewall All Profiles Disable:
  cmd.run:
    - name: netsh advfirewall set allprofiles state off
    - onlyif: if(netsh advfirewall show privateprofile | Select-String State | Select-String OFF) { exit 1 } else { exit 0 }
    - shell: powershell

Windows Firewall Domain Profile Disabled:
  cmd.run:
    - name: netsh advfirewall set allprofiles state off
    - onlyif: if(netsh advfirewall show domainprofile | Select-String State | Select-String OFF) { exit 1 } else { exit 0 }
    - shell: powershell
