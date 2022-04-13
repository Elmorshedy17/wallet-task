import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CartTypeWidget extends StatelessWidget {


  int? id;
  String? title,currency,amount;
  String? icon;
  Color? color;
  CartTypeWidget({Key? key,this.color,this.amount,this.currency,this.title,this.icon,this.id}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: MediaQuery.of(context).size.width * .55,
      padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 45,
            width: 45,
            // padding:const EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.3),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(child: SvgPicture.asset(
              'assets/images/$icon',
              color: Colors.white,
              height: 25,
            ),),
            // child: Center(child: Icon(icon,color: Colors.white,),),
          ),
          const SizedBox(
            height: 4,
          ),
          Text("$title",style: TextStyle(color: Colors.white.withOpacity(.9),fontFamily: "normal")),
          // const SizedBox(
          //   height: 2,
          // ),
          Row(
            children: [
              Text("$amount",style: TextStyle(color: Colors.white.withOpacity(.9),fontSize: 21,fontWeight: FontWeight.bold)),
              const SizedBox(
                width: 5,
              ),
              Text("$currency",style:const TextStyle(color: Colors.white,fontSize: 16,fontFamily: "normal"),),
            ],
          ),

        ],
      ),
    );
  }
}

class CartType{
  int? id;
  String? title,currency,amount;
  String? icon;
  Color? color;

  CartType({
    this.id,this.icon,this.title,this.currency,this.amount,this.color
  });
}

List <CartType> cartType = [
  CartType(
      id: 0,
      title: "الرصيد المتوفر",
      icon: "templet.svg",
      color: Color(0xff4fa4ee),
      amount: "2585",
      currency: "ريال"
  ),
  CartType(
      id: 1,
      title: "الرصيد المحجوز",
      icon: "money1.svg",
      color: Color(0xfff05959),
      amount: "2585",
      currency: "ريال"
  ),
  CartType(
      id: 2,
      title: "عدد تعاملات اليوم",
      icon: "templet.svg",
      color: Color(0xfff7d4ab),
      amount: "2585",
      currency: "ريال"
  ),
  CartType(
      id: 3,
      title: "اخر عمليه شحن",
      icon: "money1.svg",
      color: Color(0xffa4e5b4),
      amount: "2585",
      currency: "ريال"
  ),
  CartType(
      id: 4,
      title: "اخر عملية صرف",
      icon: "templet.svg",
      color: Color(0xffcaabf7),
      amount: "2585",
      currency: "ريال"
  ),
];

