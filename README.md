# paw-2026b-12

Proyecto Maven multi-modulo con Spring MVC sobre Jakarta EE.

## Modulos

| Modulo        | Contenido                                        |
|---------------|--------------------------------------------------|
| `model`       | Clases de dominio (`User`)                        |
| `interfaces`  | Contratos: `UserService`, `UserDao`               |
| `persistence` | `UserDaoImpl` (`@Repository`)                     |
| `services`    | `UserServiceImpl`, `AnotherUserServiceImpl`       |
| `webapp`      | War: controllers, `WebConfig`, `web.xml`, JSPs    |

`webapp` depende de `interfaces` en scope compile, y de `services` y
`persistence` en scope **runtime**: las implementaciones entran al war pero no
al classpath de compilacion, asi que la unica forma de obtenerlas es por
inyeccion de Spring.

## Requisitos

JDK 21 y Maven 3.9+. Si no tenes Maven instalado, IntelliJ trae uno en
`<IntelliJ>/plugins/maven/lib/maven3/bin`.

## Correr la aplicacion

Desde el directorio `paw2026b`:

```
mvn -pl webapp -am jetty:run
```

Queda en http://localhost:8080. Para usar otro puerto:

```
mvn -pl webapp -am jetty:run -Djetty.http.port=8081
```

**El `-am` no es opcional.** El plugin de Jetty resuelve los modulos hermanos a
sus directorios `target/classes`, no a los jars del repositorio local, y los
descarta en silencio si esos directorios no existen. Sin `-am` la app arranca
igual, pero el contexto falla con
`ClassNotFoundException: ar.edu.itba.paw.interfaces.UserService` y todo
responde 503. `-am` fuerza a compilar los modulos de los que depende `webapp`
antes de levantar el servidor.

Alternativa equivalente: `mvn clean install` y despues `mvn -pl webapp jetty:run`.

### Verificar que levanto bien

No alcanza con ver `Started ServerConnector`: esa linea es solo el socket HTTP y
aparece aunque la aplicacion haya fallado. Hay que ver estas dos:

```
Root WebApplicationContext initialized in NNN ms
Started oeje11mp.MavenWebAppContext@...{...,a=AVAILABLE,...}
```

y que no haya ningun `Failed startup of context`. La prueba definitiva:

```
curl -i http://localhost:8080/
```

200 con `Hello PAW!` es que anda; 503 es que el contexto se cayo.

## Endpoints

| URL                              | Que hace                                  |
|----------------------------------|-------------------------------------------|
| `/`                              | `Hello PAW!`                              |
| `/?greeting=X&userId=N`          | `@RequestParam`, con default y opcional   |
| `/user/{userId}`                 | `@PathVariable`                           |

## Stack

Spring Framework 7, Jakarta Servlet 6.1, JSTL 3, JUnit Jupiter 6, Java 21,
`web.xml` 6.1, Jetty 12 (ee11). Las versiones estan centralizadas como
properties en el pom padre.

## Build

```
mvn clean install
```

### Local

REQUIERES TOMCAT 11

mvn clean package
shutdown.sh
cp webapp/target/*.war $CATALINA_HOME/webapps/
startup.sh
