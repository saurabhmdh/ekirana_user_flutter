import 'package:ekirana_user_flutter/screens/ProductListScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
class HomeScreen extends StatefulWidget{
  @override
  _HomeScreen createState() => _HomeScreen();

}
class _HomeScreen extends State<HomeScreen> {
  int current_index=0;
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
          flexibleSpace: Container(
            color: Colors.green.shade800,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 18,top: 42),
                      child: Icon(Icons.arrow_back,color: Colors.white,)
                    ),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.only(left: 16,right: 16, top: 8),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        cursorColor: Colors.black,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white,
                                    width: 2
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2
                            )
                        ),
                          prefixIcon: Image(image: Svg('assets/images/location_icon.svg'),width: 18, height: 18,),
                          hintText: "Location",
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.only(top: 4)
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
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            ProductListScreen(
                                "Essentials & Grocery",
                                Svg('assets/images/grocery_screen_icon.svg')
                            ),
                      )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child:  const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/grocery_bag_icon.svg'),width: 36,height: 36),
                            SizedBox(height: 8,),
                            Text("Grocery",style: TextStyle(fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Garments",
                                  Svg('assets/images/garment_icon.svg')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/garment_icon.svg'),width: 36,height: 36),
                            SizedBox(height: 8,),
                            Text("Garments",style: TextStyle(fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Others",
                                  Svg('assets/images/others_icon.svg')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/others_icon.svg'),width: 36,height: 36),
                            SizedBox(height: 8,),
                            Text("Others",style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Interior Design",
                                  Svg('assets/images/interior_design_icon.svg')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/interior_design_icon.svg'),width: 36,height: 36),
                            SizedBox(height: 8,),
                            Text("Interior Design",style: TextStyle(fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Soft Drinks",
                                  Svg('assets/images/soft_drink_icon.svg')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/soft_drink_icon.svg'),width: 36,height: 36),
                            SizedBox(height: 8,),
                            Text("Soft Drinks",style: TextStyle(fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Sanitary",
                                  AssetImage('assets/images/sanitary_icon.png')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/sanitary_icon.png'),width: 34,height: 34,),
                            SizedBox(height: 8),
                            Text("Sanitary",style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              ProductListScreen(
                                  "Cosmetics",
                                  Svg('assets/images/cosmetics_icon.svg')
                              ),
                          )
                      );
                    },
                    child: Container(
                      width: 154,
                      height: 100,
                      child: const Card(
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: Svg('assets/images/cosmetics_icon.svg'),width: 34,height: 34),
                            Text("Cosmetics & Personal Care",style: TextStyle(fontWeight: FontWeight.w600 ), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green.shade800,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: current_index,
          items: const[
            BottomNavigationBarItem(
              icon: Image(image: Svg("assets/images/home_icon.svg"),width: 25,height: 25,),
              label: "",
              activeIcon: Image(image: Svg("assets/images/home_icon.svg"),width: 25,height: 25,color: Colors.orange,)
            ),
            BottomNavigationBarItem(
              icon: Image(image: Svg("assets/images/bag_icon.svg"),width: 25,height: 25,),
              label: "",
              activeIcon: Image(image: Svg("assets/images/bag_icon.svg"),width: 25,height: 25,color: Colors.orange,)
            ),
            BottomNavigationBarItem(
              icon: Image(image: Svg("assets/images/list_icon.svg"),width: 25,height: 25,),
              label: "",
              activeIcon: Image(image: Svg("assets/images/list_icon.svg"),width: 25,height: 25,color: Colors.orange,)
            ),
            BottomNavigationBarItem(
              icon: Image(image: Svg("assets/images/account_icon.svg"),width: 25,height: 25,),
              label: "",
              activeIcon: Image(image: Svg("assets/images/account_icon.svg"),width: 25,height: 25,color: Colors.orange,)
            )
          ],
          onTap: (index){
            setState((){
              current_index=index;
            });
          },
        )
      ),
    );
  }
}
