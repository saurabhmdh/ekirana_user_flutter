import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'HomeScreen.dart';
import 'OrderHistoryScreen.dart';
import 'ShoppingCartScreen.dart';
import 'UserProfileScreen.dart';

class BottomNavigationFile extends StatefulWidget {
  const BottomNavigationFile({super.key});

  @override
  State<BottomNavigationFile> createState() => _BottomNavigationFileState();
}

class _BottomNavigationFileState extends State<BottomNavigationFile> {
  final screens=[
    HomeScreen(),
    ShoppingCartScreen(),
    OrderHistoryScreen(),
    UserProfile(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green.shade800,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
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
              currentIndex=index;
            });
          },
        )
    );
  }
}
