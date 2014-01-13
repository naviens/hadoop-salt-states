hd_group:
  group.present:
    - name: hadoop
hadoop:
  user.present:
    - fullname: Hadoop User
    - shell: /bin/sh
    - home: /home/hduser
    - groups:
      - hadoop
    - require:
      - group: hd_group