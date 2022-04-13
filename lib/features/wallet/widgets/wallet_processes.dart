import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:wallet_task/features/wallet/widgets/wallet_tabel_widget.dart';
import 'package:wallet_task/shared/main_button/main_button_widget.dart';


class WalletProcessWidget extends StatelessWidget {
  const WalletProcessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 25,
              width: 5,
              color:const Color(0xff4183d7),
            ),
            const SizedBox(
              width: 15,
            ),
            const  Padding(
              padding:  EdgeInsets.symmetric(vertical: 8),
              child:  Text("عمليات المحفظة",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,height: 1.3,fontFamily: "normal"),),
            )
          ],
        ),
        const Divider(
          color: Colors.black26,
        ),

        const SizedBox(
          height: 15,
        ),

        const TableWidget(),

        const SizedBox(
          height: 18,
        ),

        FadeInRight(child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainButtonWidget(title: "مشاهدة المزيد",
            titleTextStyle:const TextStyle(
              color: Colors.black45,
              fontSize: 14,
              fontFamily: "normal",
              // fontWeight: FontWeight.w500,
              height: 1.3,
            ),
            color: Color(0xffefefef),
            onClick: (){},),
        ),),

        FadeInLeft(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: MainButtonWidget(title: "تحميل اجمالي عمليات المحفظة",
              color: Color(0xff83aee5),
              onClick: (){},),
          ),
        )
      ],
    );
  }
}
