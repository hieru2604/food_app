import 'package:flutter/material.dart';
import 'package:food_app/common/color_extension.dart';
import 'package:food_app/common_widget/round_button.dart';
import 'package:food_app/view/menu/item_detail_view.dart';

import '../../common_widget/popular_resutaurant_row.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _OfferViewState();
}

class _OfferViewState extends State<OfferView> {
  TextEditingController txtSearch = TextEditingController();

  List offerArr = [
    {
      "image": "assets/img/offer_1.png",
      "name": "Combo buổi sáng",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Món ăn ý"
    },
    {
      "image": "assets/img/offer_2.png",
      "name": "Combo buổi trưa",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Món việt"
    },
    {
      "image": "assets/img/offer_3.png",
      "name": "Cafe macchiato",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Nước"
    },
    {
      "image": "assets/img/offer_1.png",
      "name": "Combo buổi sáng",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Món ăn ý"
    },
    {
      "image": "assets/img/offer_2.png",
      "name": "Combo buổi trưa",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Món việt"
    },
    {
      "image": "assets/img/offer_3.png",
      "name": "Cafe macchiato",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "Nước"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ưu đãi mới nhất",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ItemDetailsView()));
                      },
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tìm giảm giá, Ưu đãi nhất\nMón ăn đặc biệt và nhiều hơn nữa!",
                      style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: 140,
                  height: 30,
                  child: RoundButton(
                      title: "Xem ưu đãi", fontSize: 12, onPressed: () {}),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: offerArr.length,
                itemBuilder: ((context, index) {
                  var pObj = offerArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
