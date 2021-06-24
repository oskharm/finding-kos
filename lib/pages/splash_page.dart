import 'package:flutter/material.dart';
import 'package:kos/pages/home_page.dart';
import 'package:kos/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/splash_image.png'),  
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  left: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo.png'),
                      
                    ), 
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Find Oz House\nto Stay and Happy', 
                   style: blackTextStyle.copyWith(
                     fontSize: 24,
                   ),
               ),
               SizedBox(
                 height: 10,
               ),
               Text(
                 'Temukan hunian yang aman \ndan nyaman untuk ditinggali',
                 style: greyTextStyle.copyWith(
                   fontSize: 16,
                 ),
               ),
               SizedBox(
                 height: 40,
               ),
               Container(
                 width: 210,
                 height: 50,
                 child: RaisedButton(
                   onPressed: () { 
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context) => HomePage(),
                       ),
                     );
                    },
                   color: purpleColor,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(17),
                   ),
                   child: Text(
                     'Explore Now',
                     style: whiteTextStyle.copyWith(
                       fontSize: 18,
                     ),
                   ),
                   ),
               ),
              ],
             ),
            ),
          ],
        )
      ),
    );
  }
}