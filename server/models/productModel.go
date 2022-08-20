package models

type Product struct {
	Title string `bson:"title"`
	Price int    `bson:"price"`
	Image string `bson:"image"`
}
