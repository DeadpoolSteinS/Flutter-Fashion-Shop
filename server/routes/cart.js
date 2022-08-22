const express = require("express");
const { Cart } = require("../models/cart");
const userRouter = express.Router();
const { Product } = require("../models/product");

userRouter.post("/api/add-to-cart", async (req, res) => {
  try {
    const { id } = req.body;
    const product = await Product.findById(id);
    let cart = await Cart.find({});

    if (cart.length == 0) {
        let cart = new Cart({
            product,
            quantity: 1,
        });
        cart = await cart.save();
    } else {
      let isProductFound = false;
      for (let i = 0; i < cart.length; i++) {
        if (cart[i].product._id.equals(product._id)) {
          isProductFound = true;
        }
      }

      if (isProductFound) {
        let producttt = cart.find((productt) =>
          productt.product._id.equals(product._id)
        );
        producttt.quantity += 1;
      } else {
        let cart = new Cart({
            product,
            quantity: 1,
        });
        cart = await cart.save();
      }
    }
    user = await user.save();
    res.json(user);
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = userRouter;
