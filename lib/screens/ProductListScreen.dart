import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'demo_list.dart';
//ignore: must_be_immutable
class ProductListScreen extends StatefulWidget{
  String title;
  ImageProvider<Object> icon;
  ProductListScreen(this.title,this.icon, {super.key});
  @override
  _ProductListScreen createState() => _ProductListScreen(title,icon);
}
class _ProductListScreen extends State<ProductListScreen> {
  List myList=demoList;
  String title;
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
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: Colors.black,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1
                          )
                      ),
                      suffixIcon: Icon(Icons.search,color: Colors.green.shade800,),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(left: 16)
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Expanded(
                child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 155/260,
                ),itemCount: myList.length, itemBuilder: (BuildContext context, int index){
                  return Card(
                    elevation: 4,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Image(image: NetworkImage(demoList[index]['item_image']),width: 143,height: 143,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                                  child: Text(demoList[index]['item_name'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black, fontSize: 14),textAlign: TextAlign.center,)
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 8,right: 8,top: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$"+demoList[index]['original_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey.shade600, fontSize: 12),textAlign: TextAlign.center,),
                                        Text("\$"+demoList[index]['discount_price'],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.green.shade800, fontSize: 14),textAlign: TextAlign.center,),
                                      ],
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.orange
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
                                      child: Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white, fontSize: 14),textAlign: TextAlign.center,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                  );
                }),
              ),
            ],
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          elevation: 8,
          child: Image(image: AssetImage('assets/images/floating_cart.png'),width: 70,height: 70,),
        ),
      )
    );
  }
}