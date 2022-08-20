package controllers

import (
	"context"
	"encoding/json"
	"fashion-shop/constant"
	"fashion-shop/initializers"
	"fashion-shop/models"
	"net/http"

	"github.com/julienschmidt/httprouter"
	"go.mongodb.org/mongo-driver/bson"
)

// func CreateProduct(c *gin.Context) {
// 	var body struct {
// 		Title string
// 		Price string
// 	}
// 	c.Bind(&body)

// 	product := models.Product{
// 		Title: body.Title,
// 		Price: body.Price,
// 	}
// 	result, err := initializers.ProductColl.InsertOne(context.TODO(), product)
// 	constant.CheckError(err)
// 	fmt.Println(result.InsertedID)

// 	c.JSON(200, gin.H{
// 		"product": product,
// 	})
// }

func GetAll(w http.ResponseWriter, r *http.Request, _ httprouter.Params) {
	var products []models.Product

	result, err := initializers.ProductColl.Find(context.TODO(), bson.D{{}})
	constant.CheckError(err)

	for result.Next(context.TODO()) {
		var elem models.Product
		err := result.Decode(&elem)
		constant.CheckError(err)
		products = append(products, elem)
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(products)
	// c.JSON(products)
}
