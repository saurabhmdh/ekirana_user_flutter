import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          InkWell(
                            onTap: (){},
                            child: Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.only(right: 18,top: 42),
                                child: Image(image: Svg('assets/images/logout_icon.svg'),width: 22,height: 22,)
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Edit Profile",style: TextStyle(
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
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Change Profile", style: TextStyle(fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Container(
                        width: double.infinity,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
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
