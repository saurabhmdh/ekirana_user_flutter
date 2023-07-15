import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
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
                          Navigator.pop(context);
                        },
                        child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 18,top: 42),
                            child: Icon(Icons.arrow_back,color: Colors.white,)
                        ),
                      ),
                      const Text(
                        "Order History",style: TextStyle(
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.only(left: 16,top: 16,right: 16),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order Id #1234",style: TextStyle(fontWeight: FontWeight.w600),),
                            InkWell(
                                onTap: (){},
                                child: Text("Help",style: TextStyle(color: Colors.orange),)
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Divider(thickness: 1,),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text("Order Date: "),
                            Text("12-Dec-2020",style: TextStyle(color: Colors.grey.shade600),)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text("Order has been placed", style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Card(
                  margin: EdgeInsets.only(left: 16,top: 16,right: 16),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Delivery On  ",style: TextStyle(fontWeight: FontWeight.w600),),
                            Text("12-Dec-2020",style: TextStyle(color: Colors.grey.shade600),)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Divider(thickness: 1,),
                        SizedBox(height: 24,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: Svg('assets/images/placed_icon.svg'),width: 28,height: 28,),
                                SizedBox(height: 8,),
                                Text("Placed",style: TextStyle(fontSize: 13),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: Svg('assets/images/packed_icon.svg'),width: 28,height: 28,),
                                SizedBox(height: 8,),
                                Text("Packed",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: Svg('assets/images/dispatched_icon.svg'),width: 28,height: 28,),
                                SizedBox(height: 8,),
                                Text("Dispatched",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/delivered_icon.png'),width: 28,height: 28,),
                                SizedBox(height: 8,),
                                Text("Delivered",style: TextStyle(fontSize: 12),),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16,)
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                      Text("Ekirana",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left: 16,right: 16),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 16,top: 8,bottom: 8,right: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green.shade800
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Amount \$500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.orange
                                  ),
                                  child: Text("Cancel Order?",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,),textDirection: TextDirection.ltr,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8,),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context,index){
                              return Container(
                                padding: EdgeInsets.only(bottom: 5,left: 8,right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Bhindi",style: TextStyle(color: Colors.grey.shade600)),
                                    SizedBox(width: 50,),
                                    Text("X2",style: TextStyle(color: Colors.grey.shade600)),
                                    Text("\$ 14.0",style: TextStyle(color: Colors.grey.shade600)),
                                  ],
                                ),
                              );
                            }
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        )
    );
  }
}
