import 'package:ekirana_user_flutter/screens/BottomNavigationFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
                        "User Profile",style: TextStyle(
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
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: const Color(0xff7c94b6),
                            image: DecorationImage(
                              image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all( Radius.circular(50.0)),
                            border: Border.all(
                              color: Colors.orange,
                              width: 1.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text("John Doe",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                        Text("Edit Profile", style: TextStyle(color: Colors.green.shade800, decoration: TextDecoration.underline),),
                        SizedBox(height: 16,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w600)),
                                Text("123 456 7890"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Email",style: TextStyle(fontWeight: FontWeight.w600)),
                                Text("info@gmail.com"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 8,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Address",style: TextStyle(fontWeight: FontWeight.w600)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(child: Text("Saurabh Android, 9740516004, hamirpur210507",overflow: TextOverflow.ellipsis,maxLines: 2,softWrap: false,),

                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.orange,
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Add New Address",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                              Image(image: Svg('assets/images/arrow_vector.svg'),width: 18,height: 28)
                            ],
                          )

                        ),
                        SizedBox(height: 8,),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.all(12),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("My Orders",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                Image(image: Svg('assets/images/arrow_vector.svg'),width: 18,height: 28)
                              ],
                            )

                        ),
                        SizedBox(height: 8,),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.all(12),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Customer Support",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                                Image(image: Svg('assets/images/arrow_vector.svg'),width: 18,height: 28)
                              ],
                            )

                        ),
                        SizedBox(height: 16,),
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
