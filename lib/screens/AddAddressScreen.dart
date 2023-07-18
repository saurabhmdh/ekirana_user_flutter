import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
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
                        "Add New Address",style: TextStyle(
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
              padding: EdgeInsets.all(16),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your Name",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Phone Number", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your Number",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Email", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your Email",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Address", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      TextField(
                        maxLines: 4,
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
                          hintText: "Enter Your Address",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Area", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your Area",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("City", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your City",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("Pincode", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your Pincode",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text("State", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
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
                          hintText: "Enter Your State",
                          contentPadding: EdgeInsets.only(top: 16,left: 12),
                        ),
                      ),
                      SizedBox(height: 8,),
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
                                  title: const Text('Home',style: TextStyle(fontSize: 12),),
                                  leadingAndTrailingTextStyle: TextStyle(color: Colors.grey.shade500),
                                  leading: Radio(
                                    fillColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600),
                                    value: "Home",
                                    groupValue: "address",
                                    onChanged: (value) {
                                      setState(() {
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
                                  title: const Text('Office',style: TextStyle(fontSize: 12)),
                                  leading: Radio(
                                    fillColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600),
                                    value: "Office",
                                    groupValue: "address",
                                    onChanged: (value) {
                                      setState(() {
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
                                  title: const Text('Other',style: TextStyle(fontSize: 12)),
                                  leading: Radio(
                                    fillColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600),
                                    value: "Other",
                                    groupValue: "address",
                                    onChanged: (value) {
                                      setState(() {
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value){}),
                          SizedBox(width: 5,),
                          Text("Set As Default")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.only(top: 10,bottom: 10,left: 30,right: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.orange
                              ),
                              child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,),textAlign: TextAlign.center,),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
