import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class ProductListScreen extends StatefulWidget{
  String title;
  ImageProvider<Object> icon;
  ProductListScreen(this.title,this.icon);
  @override
  _ProductListScreen createState() => _ProductListScreen(title,icon);
}
class _ProductListScreen extends State<ProductListScreen> {

  var title;
  ImageProvider<Object> icon;
  _ProductListScreen(this.title,this.icon);
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
                      onTap: (){Navigator.pop(context);},
                      child: Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.only(left: 18,top: 42),
                          child: Icon(Icons.arrow_back,color: Colors.white,)
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: icon,width: 39,height: 39,color: Colors.white,),
                        SizedBox(width: 8,),
                        Text(title,style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white
                        ),),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}