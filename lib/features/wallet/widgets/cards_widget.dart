import 'package:flutter/material.dart';
import 'package:wallet_task/features/wallet/widgets/cart_wallet_widget.dart';
import 'package:wallet_task/shared/main_button/main_button_widget.dart';



class CardsWidget extends StatelessWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          padding:const EdgeInsets.all(20),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: cartType.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: CartTypeWidget(
                    id: cartType[index].id,
                    key: Key("${cartType[index].id}"),
                    color: cartType[index].color,
                    title: cartType[index].title,
                    icon: cartType[index].icon,
                    currency: cartType[index].currency,
                    amount: cartType[index].amount,
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainButtonWidget(title: "شحن المحفظة",
            color: Color(0xff4183d7),
            onClick: (){},),
        )
      ],
    );
  }
}
