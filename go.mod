module govulnapp

go 1.18

require (
    github.com/gin-gonic/gin v1.6.3                     // CVE-2020-28483
    github.com/dgrijalva/jwt-go v3.2.0+incompatible     // CVE-2020-26160
    github.com/astaxie/beego v1.12.3                    // CVE-2020-13959
    github.com/go-ini/ini v1.44.0                       // CVE-2020-27845
    github.com/gorilla/websocket v1.4.0                 // CVE-2020-27813
    github.com/unknwon/com v1.0.1                       // No longer maintained, used in old Beego
    github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d // Unmaintained lib
    github.com/codegangsta/negroni v1.0.0               // Pre-1.0 code, no longer maintained
    github.com/labstack/echo v3.3.10                    // Prototype pollution in earlier versions
    github.com/rs/cors v1.6.0                           // Older, unpatched CORS lib
    github.com/sirupsen/logrus v1.4.2                   // CVE-2022-21706
    github.com/urfave/negroni v1.0.0                    // Pre-1.0, similar to above
    golang.org/x/net v0.0.0-20201010224723-4f7140c49acb // CVE-2020-24553
    gopkg.in/yaml.v2 v2.2.8                             // CVE-2019-11254
)
