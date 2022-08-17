import 'package:fashion_shop/constant/g_colors.dart';
import 'package:fashion_shop/constant/stock_text.dart';
import 'package:flutter/material.dart';

class OptionProduct extends StatelessWidget {
  const OptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Zara - Jacket With\nPockets",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              StockText(
                  title: "in Stock",
                  font: GColors.primaryBtn,
                  background: Color.fromARGB(47, 75, 179, 59))
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star_outline,
                    color: GColors.secondaryBtn,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "4.5",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text("(653 review)")
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 35,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    Container(
                      width: 35,
                      height: 32,
                      alignment: Alignment.center,
                      child: const Text("3"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 35,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 10,
            color: Colors.redAccent.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}
