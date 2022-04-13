import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'package:wallet_task/app_core/widgets/toast_template.dart';
import 'package:wallet_task/features/wallet/widgets/cards_widget.dart';
import 'package:wallet_task/features/wallet/widgets/cart_wallet_widget.dart';
import 'package:wallet_task/features/wallet/widgets/wallet_processes.dart';
import 'package:wallet_task/features/wallet/widgets/wallet_search.dart';
import 'package:wallet_task/features/wallet/widgets/wallet_tabel_widget.dart';
import 'package:wallet_task/shared/main_button/main_button_widget.dart';
import 'package:wallet_task/app_core/app_core.dart';


class WalletWidget extends StatefulWidget {
  // const WalletWidget({Key? key}) : super(key: key);


  @override
  State<WalletWidget> createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {




  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      backgroundColor:const Color(0xfffafafa),
      appBar: AppBar(
        title:const Text('المحفظة',style: TextStyle(color: Colors.black,fontFamily: "normal",fontWeight: FontWeight.normal),),
        backgroundColor: const Color(0xfffafafa),
        centerTitle: true,
        elevation: 0.0,
        // leading:const Center(child:   FaIcon(FontAwesomeIcons.bars)),
         actions:const [
             Center(child:   Padding(
               padding: EdgeInsets.symmetric(horizontal: 15),
               child: FaIcon(FontAwesomeIcons.bars,color: Colors.black),
             ))
         ],
      ),
      body: Container(
        padding:const EdgeInsets.all(15),
        child: ListView(
          children: [

            FadeInRight(child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),),
              child: const CardsWidget(),
            )),

            const SizedBox(
              height: 25,
            ),

            FadeInLeft(child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: WalletSearchWidget(),


            )),

            const SizedBox(
              height: 25,
            ),

            FadeInRight(child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const WalletProcessWidget(),


            ))
          ],
        ),
      ),
    );
  }
}












