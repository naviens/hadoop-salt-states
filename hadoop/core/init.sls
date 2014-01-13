get-hadoop:
  file.managed:
    - name: /usr/local/src/hadoop-2.2.0.tar.gz
    - source: http://apache.mirrors.lucidnetworks.net/hadoop/common/stable2/hadoop-2.2.0.tar.gz
    - source_hash: md5=25f27eb0b5617e47c032319c0bfd9962
  cmd.run:
    - cwd: /usr/local/src
    - name: tar -zxf /usr/local/src/hadoop-2.2.0.tar.gz -C /opt/
    - watch:
      - file: get-hadoop