import 'package:flutter/material.dart';
import 'package:food_app/common/color_extension.dart';
import 'package:food_app/common_widget/round_icon_button.dart';
import 'package:food_app/common_widget/round_textfield.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Thêm thẻ tín dụng/Visa",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: TColor.primaryText,
                  size: 25,
                ),
              )
            ],
          ),
          Divider(
            color: TColor.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Số thẻ",
            controller: txtCardNumber,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                "Ngày hết hạn",
                style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "MM",
                  controller: txtCardMonth,
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: 100,
                child: RoundTextfield(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Số bảo mật của thẻ",
            controller: txtCardCode,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Tên",
            controller: txtFirstName,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: "Họ",
            controller: txtLastName,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            Text(
              "Bạn có thể xóa thẻ bất cứ khi nào",
              style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Switch(
                value: isAnyTime,
                activeColor: TColor.primary,
                onChanged: (newVal) {
                  setState(() {
                    isAnyTime = newVal;
                  });
                })
          ]),
          const SizedBox(
            height: 25,
          ),
          RoundIconButton(
              title: "Thêm thẻ",
              icon: "assets/img/add.png",
              color: TColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              onPressed: () {}),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
