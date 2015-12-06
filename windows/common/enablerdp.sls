# Enable Remote Desktop
Remote Desktop:
  cmd.run:
    - name: set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
    - onlyif: if(set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" | Select-String 1) { exit 1 } else { exit 0 }
    - shell: powershell
