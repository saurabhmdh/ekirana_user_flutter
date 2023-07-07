import 'package:ekirana_user_flutter/screens/BottomNavigationFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'HomeScreen.dart';
import 'demo_list.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});
  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: Svg("assets/images/app_bg.svg"),fit: BoxFit.cover)
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            toolbarHeight: 100,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              color: Colors.green.shade800,
              child: Column(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          if(Navigator.canPop(context)){
                            Navigator.pop(context);
                          }
                          else{
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    BottomNavigationFile(0)
                                )
                            );
                          }
                        },
                        child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 18,top: 42),
                            child: Icon(Icons.arrow_back,color: Colors.white,)
                        ),
                      ),
                      const Text(
                          "Shopping Cart",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          body: ListView.builder(
              itemCount: demoList.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(top:18.0,left: 18,right: 18),
                  child: Card(
                    elevation: 4,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Image(image: NetworkImage(demoList[index]['item_image']),width: 114,height: 114,),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                                  child: Text(demoList[index]['item_name'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black, fontSize: 14),textDirection: TextDirection.ltr,textAlign: TextAlign.start)
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                                  child: Row(
                                    children: [
                                      Text("\$"+demoList[index]['original_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey.shade600, fontSize: 12),textAlign: TextAlign.start,),
                                      SizedBox(width: 5,),
                                      Text("\$"+demoList[index]['discount_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.green.shade800, fontSize: 14),textAlign: TextAlign.start,),
                                    ],
                                  )
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 36,
                                      height: 36,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange
                                      ),
                                        child: Text("-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),textAlign: TextAlign.center,)
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.orange
                                        ),
                                        child: Text("1",style: TextStyle(
                                            color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),textAlign: TextAlign.center,)
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                        width: 36,
                                        height: 36,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.orange
                                        ),
                                        child: Text("+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 14),textAlign: TextAlign.center,)
                                    )
                                  ],
                                )
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
          }),
          bottomSheet: Container(
              width: double.infinity,
              height: 60,
              color: Colors.white,
              child:  Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(left: 25,bottom: 3),
                      child:  Text("Total: \$600.00",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 14,bottom: 3),
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18,right: 18,top:0,bottom:0),
                          child:  Text("Checkout",style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 14,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        )
    );
  }
}
