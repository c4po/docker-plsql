Run sql with oracle sqlplus

```
docker run -v `pwd`:/sql -it --rm -e URL=user/password@//host:1521/service sqlplus @/sql/script.sql
```
