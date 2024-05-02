import 'package:flutter/material.dart';
import 'package:food_app/common/color_extension.dart';

import 'my_order_view.dart';

class InboxView extends StatefulWidget {
  const InboxView({super.key});

  @override
  State<InboxView> createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  List inboxArr = [
    {
      "title": "Ưu đãi MealMonkey",
      "detail":
          "Cảm ơn bạn đã quan tâm đến ứng dụng ăn uống của chúng tôi! Chúng tôi giới thiệu cho bạn khuyến mãi đặc biệt về thực phẩm và đồ uống trong tháng này. Bạn có thể tìm thấy nhiều đồ ăn và uống ngon nhất từ các nơi đến các nơi khác bằng cách sử dụng ứng dụng của chúng tôi. Với khuyến mãi này, bạn sẽ nhận được giảm giá lên đến 50% từ nhiều địa điểm ăn uống được lựa chọn..",
    },
    {
      "title": "Ưu đãi MealMonkey",
      "detail":
          "Cảm ơn bạn đã quan tâm đến ứng dụng ăn uống của chúng tôi! Chúng tôi giới thiệu cho bạn khuyến mãi đặc biệt về thực phẩm và đồ uống trong tháng này. Bạn có thể tìm thấy nhiều đồ ăn và uống ngon nhất từ các nơi đến các nơi khác bằng cách sử dụng ứng dụng của chúng tôi. Với khuyến mãi này, bạn sẽ nhận được giảm giá lên đến 50% từ nhiều địa điểm ăn uống được lựa chọn..",
    },
    {
      "title": "Ưu đãi MealMonkey",
      "detail":
          "Cảm ơn bạn đã quan tâm đến ứng dụng ăn uống của chúng tôi! Chúng tôi giới thiệu cho bạn khuyến mãi đặc biệt về thực phẩm và đồ uống trong tháng này. Bạn có thể tìm thấy nhiều đồ ăn và uống ngon nhất từ các nơi đến các nơi khác bằng cách sử dụng ứng dụng của chúng tôi. Với khuyến mãi này, bạn sẽ nhận được giảm giá lên đến 50% từ nhiều địa điểm ăn uống được lựa chọn..",
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/img/btn_back.png",
                          width: 20, height: 20),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "Inbox",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
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
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: inboxArr.length,
                separatorBuilder: ((context, index) => Divider(
                      indent: 25,
                      endIndent: 25,
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                    )),
                itemBuilder: ((context, index) {
                  var cObj = inboxArr[index] as Map? ?? {};
                  return Container(
                    decoration: BoxDecoration(
                        color:
                            index % 4 != 1 ? TColor.white : TColor.textfield),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cObj["title"].toString(),
                                style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                cObj["detail"].toString(),
                                maxLines: 2,
                                style: TextStyle(
                                    color: TColor.secondaryText, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
