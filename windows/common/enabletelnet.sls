Enable Telnet:
  cmd.run:
    - name: Import-Module ServerManager; Add-WindowsFeature telnet-client
    - onlyif: Import-Module ServerManager; if((Get-WindowsFeature telnet-client).installed | select-string -pattern "True") { exit 1}
    - shell: powershell
