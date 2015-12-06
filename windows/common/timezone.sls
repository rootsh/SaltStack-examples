Time Zone:
  cmd.run:
    - name: tzutil /s "E. South America Standard Time"
    - onlyif: if ( tzutil /g | Select-String America ) { exit 1 } else { exit 0 }
    - shell: powershell
