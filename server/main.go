package main

import (
	"fashion-shop/controllers"
	"fashion-shop/initializers"

	"github.com/gin-gonic/gin"
)

func init() {
	initializers.LoadEnvVariables()
	initializers.ConnectToDB()
}

func main() {
	r := gin.Default()
	r.GET("/", controllers.GetAll)
	r.POST("/create", controllers.CreateProduct)
	r.Run()
}
