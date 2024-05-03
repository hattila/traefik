## Traefik Edge Router
https://traefik.io/

Start traefik with ./start.sh.

The syntax expects Docker 2 with Compose plugin.

If you still use docker-compose, you can change:

```yaml
networks:
    traefik:
        name: traefik
        external: true
```
into:
```yaml
networks:
    traefik:
        external: true
```

and add a dash between docker and compose in the .sh file
    
```bash
docker-compose up -d
```

Service will be available at
https://traefik.localhost/dashboard/#/

### HTTP Basic Auth
https://doc.traefik.io/traefik/middlewares/http/basicauth/

Create your own password and set it in the .env file.

```bash
echo $(htpasswd -nb admin YourPassword123) | sed -e s/\\$/\\$\\$/g
```
```dotenv
HTTP_BASIC_AUTH_PASSWORD=$$apr1$$mEId9LBE$$IgL4aTk9X79ohVQmk5Qss/
```
