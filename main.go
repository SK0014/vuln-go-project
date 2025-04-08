package main

import (
    "github.com/gin-gonic/gin"
    "github.com/dgrijalva/jwt-go"
    "html/template"
    "net/http"
    "time"
)

var secretKey = []byte("secret")

func main() {
    router := gin.Default()
    router.SetHTMLTemplate(template.Must(template.ParseFiles("templates/index.html")))

    router.GET("/", func(c *gin.Context) {
        c.HTML(http.StatusOK, "index.html", gin.H{"token": ""})
    })

    router.POST("/token", func(c *gin.Context) {
        user := c.PostForm("user")

        // 🔥 Creates an unsigned token (vulnerable to CVE-2020-26160)
        token := jwt.NewWithClaims(jwt.SigningMethodNone, jwt.MapClaims{
            "user": user,
            "exp":  time.Now().Add(time.Hour * 1).Unix(),
        })
        tokenString, _ := token.SignedString(jwt.UnsafeAllowNoneSignatureType)

        c.HTML(http.StatusOK, "index.html", gin.H{"token": tokenString})
    })

    // 🔥 Insecure JWT parsing
    router.GET("/validate", func(c *gin.Context) {
        tokenString := c.Query("token")
        token, _ := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
            return secretKey, nil
        })

        if token != nil && token.Valid {
            c.String(http.StatusOK, "Token is valid!")
        } else {
            c.String(http.StatusBadRequest, "Invalid token!")
        }
    })

    router.Run(":8080")
}
