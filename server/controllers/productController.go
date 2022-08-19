package controllers

import (
	"context"
	"fashion-shop/constant"
	"fashion-shop/initializers"
	"fashion-shop/models"
	"fmt"

	"github.com/gin-gonic/gin"
	"go.mongodb.org/mongo-driver/bson"
)

func CreateProduct(c *gin.Context) {
	var body struct {
		Title string
		Price string
	}
	c.Bind(&body)

	product := models.Product{
		Title: body.Title,
		Price: body.Price,
	}
	result, err := initializers.ProductColl.InsertOne(context.TODO(), product)
	constant.CheckError(err)
	fmt.Println(result.InsertedID)

	c.JSON(200, gin.H{
		"product": product,
	})
}

func GetAll(c *gin.Context) {
	var products []models.Product

	result, err := initializers.ProductColl.Find(context.TODO(), bson.D{{}})
	constant.CheckError(err)

	for result.Next(context.TODO()) {
		var elem models.Product
		err := result.Decode(&elem)
		constant.CheckError(err)
		products = append(products, elem)
	}

	c.JSON(200, gin.H{
		"product": products,
	})
}
