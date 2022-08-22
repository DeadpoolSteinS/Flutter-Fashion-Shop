const mongoose = require("mongoose");
const { productSchema } = require("./product");

const cartSchema = mongoose.Schema({
  products: {
    product: productSchema,
    required: true,
  },
  quantity: {
    type: Number,
    required: true,
  },
});

const Cart = mongoose.model("Cart", cartSchema);
module.exports = Cart;
