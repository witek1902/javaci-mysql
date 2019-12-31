# javaci-mysql

Jeśli podczas uruchamiania kontenera pojawiają się problemy z uprawnieniami do katalogów, zmień uprawnienia do stworzonych przez skrypt `run.sh` katalogów:

```bash
chown -R mysql:mysql /opt/mysql
```

Walidacja uruchomienia:
```bash
docker container exec -it mysql bash
mysql -h 127.0.0.1 -P 3306 -uroot  -padmin123
```
