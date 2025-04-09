module govulnapp

go 1.18

require (
    github.com/astaxie/beego v1.12.3                    // CVE-2020-13959 (template injection)
    github.com/go-ini/ini v1.44.0                       // CVE-2020-27845 (DoS)
    github.com/peterhellberg/link v1.0.0                // CVE-2020-14040 (DoS via malformed link headers)
    github.com/kataras/iris v11.1.1                     // CVE-2021-3121 (unsafe deserialization)
    github.com/antchfx/xmlquery v1.3.5                  // CVE-2022-29582 (XXE via external entity loading)
    github.com/urfave/cli v1.22.2                       // CVE-2020-13482 (directory traversal)
    github.com/gorilla/websocket v1.4.0                 // CVE-2020-27813 (memory DoS via large payloads)
    github.com/mholt/archiver v3.1.1+incompatible       // CVE-2021-21267 (zip slip path traversal)
    github.com/Shopify/sarama v1.19.0                   // CVE-2020-35525 (denial of service)
    github.com/Azure/go-autorest/autorest v0.9.0        // CVE-2020-3346 (request injection)
    github.com/sirupsen/logrus v1.4.2                   // CVE-2022-21706 (DoS from repeated panics)
    golang.org/x/net v0.0.0-20201010224723-4f7140c49acb  // CVE-2020-24553 (HTTP smuggling)
    gopkg.in/yaml.v2 v2.2.8                             // CVE-2019-11254 (CPU DoS)
)
