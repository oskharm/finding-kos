import 'package:flutter/material.dart';
import 'package:kos/models/spaces.dart';
import 'package:kos/pages/detail_page.dart';
import 'package:kos/theme.dart';


class SpacesCard extends StatelessWidget {

  final Spaces spaces;
  SpacesCard(this.spaces);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    spaces.imageurl,
                  ),
                  Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 70,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(36),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icon_star.png',
                                width: 22,
                                height: 22,
                                ),
                                Text(
                                  '${spaces.rating}/5',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 13,
                                  ),
                                ),
                            ],
                          ),
                        ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                spaces.name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: '\$${spaces.price}52',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                     text: ' / month',
                     style: greyTextStyle.copyWith(
                       fontSize: 16,
                     )
                    ),
                  ], 
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${spaces.city}, ${spaces.country}',
                style: greyTextStyle.copyWith(
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}