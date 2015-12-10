Enable IIS:
  cmd.run:
    - name: Import-Module ServerManager; add-windowsfeature web-server -includeallsubfeature
    - onlyif: Import-Module ServerManager; if((Get-WindowsFeature Web-Common-Http).installed | select-string -pattern "True") { exit 1}
    - shell: powershell
