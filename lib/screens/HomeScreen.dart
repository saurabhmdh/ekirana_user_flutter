import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/app_background.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Container(
            color: Colors.green,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 18,top: 42),
                      child: Image.asset('assets/images/left_arrow.png')
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 16,right: 16, top: 8),
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 1
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 1
                            )
                        ),
                          prefixIcon: Container(
                            width: 5,
                            height: 5,
                            child: Image(image: ResizeImage(AssetImage('assets/images/location_icon.png'),width: 18,height: 18),),
                          ),
                          hintText: "Location",
                          filled: true,
                          fillColor: Colors.white
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/grocery_bag_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Grocery",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/garment_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Garments",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/others_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Others",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/interior_design_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Interior Design",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/soft_drink_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Soft Drinks",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/sanitary_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Sanitary",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 154,
                    height: 100,
                    child: const Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: ResizeImage(AssetImage('assets/images/cosmetics_icon.png'),width: 36,height: 36)),
                          SizedBox(height: 10,),
                          Text("Cosmetics",style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
