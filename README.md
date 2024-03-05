Traefik
https://traefik.io/

HTTP Basic Auth
https://doc.traefik.io/traefik/middlewares/http/basicauth/

```
echo $(htpasswd -nb admin YourPassword123) | sed -e s/\\$/\\$\\$/g
```

https://traefik.localhost/dashboard/#/
