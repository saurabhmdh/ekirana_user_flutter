import 'package:ekirana_user_flutter/screens/OrderScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  var paymentMethod;
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Delivery Location",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),textAlign: TextAlign.left,),
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
                          SizedBox(height: 16,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Change Address",textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w600,color: Colors.orange,decoration: TextDecoration.underline),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Total Bag Value",style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ 400",style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                          SizedBox(height: 8,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Charges",style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ 50",style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                          SizedBox(height: 8,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Taxes",style: TextStyle(fontWeight: FontWeight.w600),),
                              Text("\$ 35",style: TextStyle(fontWeight: FontWeight.w600),),
                            ],
                          ),
                          SizedBox(height: 8,),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.orange
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Payable Amount",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                Text("\$ 500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
                              ],
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text("Payment Method", style: TextStyle(fontWeight: FontWeight.w600),),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child:ListTileTheme(
                                    horizontalTitleGap: 0,
                                    child: ListTile(
                                      visualDensity: VisualDensity(horizontal: -4.0),
                                      contentPadding: EdgeInsets.symmetric(horizontal: 0),
                                      title: const Text('Online Mode',style: TextStyle(fontSize: 12),),
                                      leadingAndTrailingTextStyle: TextStyle(color: Colors.grey.shade500),
                                      leading: Radio(
                                        fillColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600),
                                        value: "Online",
                                        groupValue: paymentMethod,
                                        onChanged: (value) {
                                          setState(() {
                                            paymentMethod = value.toString();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child:ListTileTheme(
                                    horizontalTitleGap: 0,
                                    child: ListTile(
                                      visualDensity: VisualDensity(horizontal: -4.0),
                                      contentPadding: EdgeInsets.zero,
                                      title: const Text('Cash on Delivery',style: TextStyle(fontSize: 12)),
                                      leading: Radio(
                                        fillColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600),
                                        value: "Cash",
                                        groupValue: paymentMethod,
                                        onChanged: (value) {
                                          setState(() {
                                            paymentMethod = value.toString();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),

                              ]
                          ),
                          SizedBox(height: 8,),
                          Text("Promo Code", style: TextStyle(fontWeight: FontWeight.w600),),
                          SizedBox(height: 8,),
                          TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:  BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:  BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1
                                  )
                              ),
                              hintText: "Enter Your Code",
                              contentPadding: EdgeInsets.only(top: 4,left: 12),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 150,
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 10,bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green.shade800,
                                ),
                                child: Text("Apply Coupon",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OrderScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange
                      ),
                      child: Text("Pay Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,),textDirection: TextDirection.ltr,),
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
