import 'package:ekirana_user_flutter/screens/BottomNavigationFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>
                                  BottomNavigationFile(0)
                              )
                          );
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
          body: ListView.builder(itemCount: 5, itemBuilder: (BuildContext context, int index){
            return Card(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Delivery Type: "),
                            Text("Normal",style: TextStyle(color: Colors.grey.shade600),)
                          ],
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Status: "),
                            Text("Ongoing",style: TextStyle(color: Colors.orange),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Text("Order Date: "),
                        Text("12-Dec-2020",style: TextStyle(color: Colors.grey.shade600),)
                      ],
                    ),
                    SizedBox(height: 12,),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.orange
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Amount",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                          Text("\$ 500",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){

                          },
                            child: Text("Track",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.green.shade800),)
                        ),
                      ],
                    )
                  ],
                ),
              ),

            );
          }),
        )
    );
  }
}
