Enale IIS:
  cmd.run:
    - name: Import-Module ServerManager; Add-WindowsFeature -Name Web-Common-Http,Web-Asp-Net,Web-Net-Ext,Web-ISAPI-Ext,Web-ISAPI-Filter,Web-Http-Logging,Web-Request-Monitor,Web-Basic-Auth,Web-Windows-Auth,Web-Filtering,Web-Performance,Web-Mgmt-Console,Web-Mgmt-Compat,RSAT-Web-Server,WAS -IncludeAllSubFeature
    - onlyif: Import-Module ServerManager; if((Get-WindowsFeature Web-Common-Http).installed | select-string -pattern "True") { exit 1}
    - shell: powershell
