centos:
  'saltstack*':
    - common.epel
    - common.packages
    - common.profile
    - common.security

    'centos6*':
      - common.epel
      - common.packages
      - common.profile
