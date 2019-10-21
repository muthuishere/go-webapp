package main

import (
  "net/http"  
  "github.com/gin-gonic/gin"
)

func main() {

  router := gin.Default()

  api := router.Group("/api")
  {
    api.GET("/", func(c *gin.Context) {
      c.JSON(http.StatusOK, gin.H {
        "message": "pong",
      })
	})
	
	
  }
  
  // Start and run the server
  router.Run(":3000")
}