import 'package:flutter/material.dart';
import 'package:hijri_picker/hijri_picker.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:wallet_task/app_core/widgets/toast_template.dart';
import 'package:wallet_task/app_core/app_core.dart';
import 'package:wallet_task/features/wallet/controller.dart';
import 'package:wallet_task/shared/main_button/main_button_widget.dart';

class WalletSearchWidget extends StatelessWidget {
   WalletSearchWidget({Key? key}) : super(key: key);
  HijriCalendar? from ;
  HijriCalendar? to ;
  @override
  Widget build(BuildContext context) {
    var selectedDate = new HijriCalendar.now();
    final toast = context.use<ToastTemplate>();
    final walletManager = context.use<WalletManager>();

    return Column(
      children: [
        Row(
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
              child:  Text("بحث حركات المحفظة",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,fontFamily: "normal"),),
            )
          ],
        ),
        const Divider(
          color: Colors.black26,
        ),


        Padding(padding: EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
            child: StreamBuilder<HijriCalendar>(
              stream: walletManager.hijriFromPicker$,
              builder: (context, hijriFromPickerSnapshot) {
                return InkWell(
                  onTap: () async {
                    final HijriCalendar? picked = await showHijriDatePicker(

                      context: context,
                      initialDate: selectedDate,
                      lastDate: new HijriCalendar()
                        ..hYear = 1445
                        ..hMonth = 9
                        ..hDay = 25,
                      firstDate: new HijriCalendar()
                        ..hYear = 1438
                        ..hMonth = 12
                        ..hDay = 25,
                      initialDatePickerMode: DatePickerMode.day,
                    );
                    if (picked != null){
                      from = picked;
                      walletManager.inHijriFromPicker.add(picked);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("${hijriFromPickerSnapshot.hasData? hijriFromPickerSnapshot.data :"تاريخ من"}",style: TextStyle(color: Colors.black45,fontFamily: "normal"),),
                      ),
                      Container(
                        height: 50,
                        width: 55,
                        decoration:const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: Color(0xff83aee5),
                        ),
                        child: Center(child: const Text("هـ",style: TextStyle(color: Colors.white,fontFamily: "normal"),),),
                      )
                    ],
                  ),
                );
              }
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
            child: StreamBuilder<HijriCalendar>(
                stream: walletManager.hijriToPicker$,
                builder: (context, hijriToPickerSnapshot) {
                return InkWell(
                  onTap: () async {
                    if(from == null){
                      toast.show("برجاء تحديد تاريخ من اولا");
                      return;
                    }

                    final HijriCalendar? picked = await showHijriDatePicker(

                      context: context,
                      initialDate: selectedDate,
                      lastDate: new HijriCalendar()
                        ..hYear = 1445
                        ..hMonth = 9
                        ..hDay = 25,
                      firstDate: new HijriCalendar()
                        ..hYear = 1438
                        ..hMonth = 12
                        ..hDay = 25,
                      initialDatePickerMode: DatePickerMode.day,
                    );

                    if (picked != null){
                      if(walletManager.hijriFromPickerValue.isAfter(picked.hYear,picked.hMonth, picked.hDay)){
                        toast.show("يجب ان يكون تاريخ الي بعد تاريخ من");
                        return;
                      }
                      walletManager.inHijriToPicker.add(picked);


                    }


                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("${hijriToPickerSnapshot.hasData? hijriToPickerSnapshot.data :"تاريخ الي" }",style: TextStyle(color: Colors.black45,fontFamily: "normal"),),
                      ),
                      Container(
                        height: 50,
                        width: 55,
                        decoration:const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0)),
                          color: Color(0xff83aee5),
                        ),
                        child: Center(child: Text("هـ",style: TextStyle(color: Colors.white,fontFamily: "normal"),),),
                      )
                    ],
                  ),
                );
              }
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: MainButtonWidget(title: "بحث",
            color: Color(0xff4183d7),
            onClick: (){},),
        )
      ],
    );
  }
}
