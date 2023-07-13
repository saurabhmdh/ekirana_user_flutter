import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
          resizeToAvoidBottomInset: true,
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
                        "Order Confirm",style: TextStyle(
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
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order #1234",style: TextStyle(fontWeight: FontWeight.w600),),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 8,top: 4),
                                child: Image(image: Svg('assets/images/home_icon.svg'),width: 18,height: 18,color: Colors.orange,alignment: Alignment.topLeft,),
                              ),
                              Expanded(child: Text("Saurabh Android, 9740516004, hamirpur210507",overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.grey.shade600),)),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Image(image: Svg('assets/images/drop_arrow.svg'),width: 21,height: 21,),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8,top: 4),
                                child: Image(image: Svg('assets/images/location_icon.svg'),width: 18,height: 18,color: Colors.green.shade800,alignment: Alignment.topLeft,),
                              ),
                              Expanded(child: Text("Saurabh Android, 9740516004, hamirpur210507",overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.grey.shade600))),
                            ],
                          ),
                        ],
                      )
                    ),
                  ),
                  SizedBox(height: 4,),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order Summary",style: TextStyle(fontWeight: FontWeight.w600),),
                          SizedBox(height: 8,),
                          Divider(thickness: 1,),
                          SizedBox(height: 8,),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                              itemBuilder: (context,index){
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Bhindi",style: TextStyle(color: Colors.grey.shade600)),
                                  SizedBox(width: 50,),
                                  Text("X2",style: TextStyle(color: Colors.grey.shade600)),
                                  Text("\$ 14.0",style: TextStyle(color: Colors.grey.shade600)),
                                ],
                              );
                              }
                          ),
                          SizedBox(height: 8,),
                          Divider(thickness: 1,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Order",style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ 400",style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Charges",style: TextStyle(color: Colors.grey.shade600)),
                              Text("\$ 30",style: TextStyle(color: Colors.grey.shade600)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Taxes",style: TextStyle(color: Colors.grey.shade600)),
                              Text("\$ 6",style: TextStyle(color: Colors.grey.shade600)),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Savings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                Text("\$ -500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Pay On Delivery",style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ 1500",style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.w600))
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),
          ),
        )
    );
  }
}
