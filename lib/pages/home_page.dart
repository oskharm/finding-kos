import 'package:flutter/material.dart';
import 'package:kos/models/tips.dart';
import 'package:kos/theme.dart';
import 'package:kos/widgets/bottom_nav.dart';
import 'package:kos/widgets/city_card.dart';
import 'package:kos/models/city.dart';
import 'package:kos/widgets/spaces_card.dart';
import 'package:kos/models/spaces.dart';
import 'package:kos/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // Note: Title Header
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                 style: blackTextStyle.copyWith(
                 fontSize: 24,
                 ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            // Note : Popular cities
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
                ),
              ),
              SizedBox(
                height: 38,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      ),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Note : Recommended space
              Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Spaces',
                 style: blackTextStyle.copyWith(
                 fontSize: 16,
                 ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpacesCard(
                    Spaces(
                      id: 1,
                      name: 'Kuretakeso Hot',
                      imageurl: 'assets/space1.png',
                      price: 52,
                      city: 'Bandung',
                      country: 'Germany',
                      rating: 4,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpacesCard(
                    Spaces(
                      id: 2,
                      name: 'Roemah Nenek',
                      imageurl: 'assets/space2.png',
                      price: 11,
                      city: 'Seattle',
                      country: 'Bogor',
                      rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpacesCard(
                    Spaces(
                      id: 3,
                      name: 'Darrling How',
                      imageurl: 'assets/space3.png',
                      price: 20,
                      city: 'Jakarta',
                      country: 'Bogor',
                      rating: 5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // Note :Tips & Guidance
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                 style: blackTextStyle.copyWith(
                 fontSize: 16,
                 ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guideliness',
                      imageUrl: 'assets/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '20 Des',
                    ),
                  ),
                ],
              ),  
            ),
            SizedBox(
              height: 50 + edge,
            ),
          ],
        ),
      ),

      floatingActionButton: Container(
              height: 65,
              width: MediaQuery.of(context).size.width - (2 * edge),
              margin: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffF6F7F8),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_home.png',
                      isActive: true,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_email.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_card.png',
                      isActive: false,
                    ),
                    BottomNavbarItem(
                      imageUrl: 'assets/icon_love.png',
                      isActive: false,
                    ),
                  ],
                ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}