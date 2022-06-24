import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Well come to profile page",style: TextStyle(fontSize: 25,fontFamily: 'Montserrat'),),
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey,
              //backgroundImage: NetworkImage("https://www.facebook.com/photo/?fbid=474392510366461&set=a.108059926999723"),
              child: ClipRect(
                child: Image.network("https://avatars.githubusercontent.com/u/99319134?s=400&u=33644532c0aec300daaa27a110c4a6d45cc3dfd4&v=4"),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: Injmaul Haq Sohag",style: GoogleFonts.akayaKanadaka(fontSize: 25),),
                SizedBox(height: 5,),
                Text("Email: ihsohag84@gmail.com",style: GoogleFonts.akayaKanadaka(fontSize: 20),),
                SizedBox(height: 8,),
                Text("Address: Nikli, Kishoreganj",style: GoogleFonts.akayaKanadaka(fontSize: 20),),
                SizedBox(height: 8,),
              ],
            )

          ],
        ),
      ),
    );
  }
}
