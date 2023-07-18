import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'demo_list.dart';

class ProductDetailScreen extends StatefulWidget {
  int index;
  ProductDetailScreen(this.index);
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState(index);
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int index=0;
  _ProductDetailScreenState(this.index);
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
                        "Product Detail",style: TextStyle(
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
          body: Card(
            margin: EdgeInsets.all(16),
            elevation: 4,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              height: 500,
              color: Colors.grey.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Image(image: NetworkImage(demoList[index]['item_image']),width: 294,height: 294,),
                  ),
                  Text(demoList[index]['item_name'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black, fontSize: 18),textAlign: TextAlign.center,),
                  SizedBox(height: 8,),
                  Text("Original Price: \$"+demoList[index]['original_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey.shade600, fontSize: 14),textAlign: TextAlign.center,),
                  SizedBox(width: 8,),
                  Text("Offer Price: \$"+demoList[index]['discount_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.green.shade800, fontSize: 18),textAlign: TextAlign.center,),
                  SizedBox(height: 16,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                      child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 14),textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),
            ),
          )
        )
    );
  }
}
