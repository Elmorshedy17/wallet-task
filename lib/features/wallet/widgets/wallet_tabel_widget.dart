import 'package:flutter/material.dart';


class TableWidget extends StatelessWidget {
  const TableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      // textDirection: TextDirection.rtl,
      defaultVerticalAlignment:TableCellVerticalAlignment.middle ,
      border: TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid),top: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid),verticalInside: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid),left: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid),right: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid),bottom: BorderSide(width: 1, color: Colors.grey.withOpacity(.5), style: BorderStyle.solid), borderRadius: BorderRadius.circular(5),),

      // border: TableBorder.all(color: Colors.grey.withOpacity(.5)),
      children: const [
        TableRow(decoration: BoxDecoration(
            color: Color(0xffe5e5e5)
        ),

            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                child: Center(child: Text('رقم العملية',style: TextStyle(fontSize: 18,fontFamily: "normal",),)),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                child: Center(child: Text('نوع الحركة',style: TextStyle(fontSize: 18,fontFamily: "normal",),)),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                child: Center(child: Text('تاريخ الحركة',style: TextStyle(fontSize: 18,fontFamily: "normal",),)),
              ),




            ]),

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////


        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////


        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////


        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////


        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////

        //////////////// start ////////////
        TableRow( children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('230452',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child: Center(child: Text('صرف من المحفظة',style: TextStyle(fontSize: 15,fontFamily: "normal",))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 20),
            child:   Center(child: Text('2021-04-19',style: TextStyle(fontSize: 14,fontFamily: "normal",))),
          ),



        ]),
        //////////////// end ///////////
      ],
    );
  }
}
