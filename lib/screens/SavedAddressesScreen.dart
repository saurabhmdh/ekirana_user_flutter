import 'package:ekirana_user_flutter/screens/AddAddressScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SavedAddressesScreen extends StatefulWidget {
  const SavedAddressesScreen({super.key});

  @override
  State<SavedAddressesScreen> createState() => _SavedAddressesScreenState();
}

class _SavedAddressesScreenState extends State<SavedAddressesScreen> {
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
                        "Saved Addresses",style: TextStyle(
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
          body: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          AddAddressScreen()
                      )
                  );
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange
                  ),
                  child: Text("+ ADD NEW ADDRESS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                  ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.only(left: 16,right: 16,bottom: 16),
                        child: Container(
                        height: 94,
                        color: Colors.grey.shade50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: ListTile(
                                        horizontalTitleGap: 0,
                                        leading: Radio(
                                          visualDensity: VisualDensity(horizontal: -4.0),
                                          value: index,
                                          groupValue: "address",
                                          onChanged: (value){
                                            setState(() {

                                            });
                                          },
                                        ),
                                        title: Text("Home",style: TextStyle(fontWeight: FontWeight.w600),),
                                      ),
                                      height: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 55.0),
                                      child: Text("More Address"),
                                    ),
                                    SizedBox(height: 25,)
                                  ],
                                ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/edit_address_icon.png'),width: 36,height: 36,),
                                SizedBox(width: 8,),
                                Image(image: AssetImage('assets/images/delete_address_icon.png'),width: 36,height: 36,),
                                SizedBox(width: 16,)
                              ],
                            )
                          ],
                        ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
