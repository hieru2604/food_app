import 'package:flutter/material.dart';
import 'package:food_app/common/color_extension.dart';
import 'package:food_app/common_widget/category_cell.dart';
import 'package:food_app/common_widget/most_popular_cell.dart';
import 'package:food_app/common_widget/popular_resutaurant_row.dart';
import 'package:food_app/common_widget/recent_item_row.dart';
import 'package:food_app/common_widget/round_textfield.dart';
import 'package:food_app/common_widget/view_all_row_title.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/img/cat_offer.png", "name": "Ưu đãi"},
    {"image": "assets/img/cat_sri.png", "name": "Món mới"},
    {"image": "assets/img/cat_3.png", "name": "Món ý"},
    {"image": "assets/img/cat_4.png", "name": "Ấn độ"},
  ];

  List popArr = [
    {
      "image": "assets/img/res_1.png",
      "name": "pizza 1 nhà",
      "rate": "4.9",
      "rating": "124",
      "type": "cafa",
      "food_type": "Món ăn tây"
    },
    {
      "image": "assets/img/res_2.png",
      "name": "cafe damla",
      "rate": "4.9",
      "rating": "124",
      "type": "moro",
      "food_type": "Món ăn ý"
    },
    {
      "image": "assets/img/res_3.png",
      "name": "Tiệm bánh Telefone",
      "rate": "4.9",
      "rating": "124",
      "type": "baka",
      "food_type": "Bánh mì ngọt"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/img/res_1.png",
      "name": "pizza 1 nhà",
      "rate": "4.9",
      "rating": "124",
      "type": "cafa",
      "food_type": "Món ăn tây"
    },
    {
      "image": "assets/img/res_2.png",
      "name": "cafe damla",
      "rate": "4.9",
      "rating": "124",
      "type": "moro",
      "food_type": "Món ăn ý"
    },
  ];

  List recentArr = [
    {
      "image": "assets/img/item_1.png",
      "name": "mozzarella pizza",
      "rate": "4.9",
      "rating": "124",
      "type": "pizza 1 nhà",
      "food_type": "Món ăn tây"
    },
    {
      "image": "assets/img/item_2.png",
      "name": "Cà phê sữa",
      "rate": "4.9",
      "rating": "124",
      "type": "cafe damla",
      "food_type": "cafe"
    },
    {
      "image": "assets/img/item_3.png",
      "name": "Pizza nấm",
      "rate": "4.9",
      "rating": "124",
      "type": "pizza 1 nhà",
      "food_type": "Món ăn tây"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
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
                      "Chào buổi sáng~!",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                      onPressed: () {
                        //
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Giao hàng tới",
                      style:
                          TextStyle(color: TColor.secondaryText, fontSize: 11),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Địa điểm hiện tại",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          "assets/img/dropdown.png",
                          width: 12,
                          height: 12,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: "Tìm món ăn",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/img/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return CategoryCell(
                      cObj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Nhà hàng nổi tiếng",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Nổi tiếng nhất",
                  onView: () {},
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(
                      mObj: mObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Món ăn gần đây",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {},
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
