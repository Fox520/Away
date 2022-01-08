import 'dart:ui';

import 'package:away/config/constants.dart';
import 'package:away/config/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DiscoverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return PageView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        'https://images.prop24.com/267180470'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: darkModeOn
                          ? LinearGradient(colors: [
                              Colors.black38,
                              Colors.black38,
                            ])
                          : LinearGradient(colors: [
                              Colors.transparent,
                              Colors.transparent,
                            ]),
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: kMediumHeight * 2),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.15),
                      decoration: BoxDecoration(
                        color: darkModeOn
                            ? Colors.black38.withOpacity(0.5)
                            : Colors.grey.shade200.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.location_solid,
                          ),
                          Text(
                            "Oshakati",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: kMediumHeight * 3),
                    CarouselSlider(
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        height: 34 * SizeConfig.heightMultiplier,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlayAnimationDuration: Duration(seconds: 2),
                        autoPlayInterval: Duration(seconds: 10),
                        autoPlay: true,
                      ),
                      items: [
                        "https://images.prop24.com/267180470",
                        "https://media.cntraveler.com/photos/5ea354e75e5dc70008d054b9/16:9/w_2560%2Cc_limit/24912891-australia-3.jpg",
                        "https://static.trip101.com/main_pics/261395/medium.jpg",
                      ].map((place) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: Offset(0, 0),
                                  )
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  image: NetworkImage(place),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    SizedBox(height: kMediumHeight * 2),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPaddingSize),
                      child: Container(
                        decoration: BoxDecoration(
                          color: darkModeOn
                              ? Colors.black38.withOpacity(0.5)
                              : Colors.grey.shade200.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: kSmallWidth, vertical: kMediumHeight),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "3 Bedroom Apartment",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(fontSize: 20),
                                ),
                                Text(
                                  "N\$ 2500",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(fontSize: 20),
                                ),
                              ],
                            ),
                            Text(
                              "N\$ 1500 deposit",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    fontSize: 18,
                                  ),
                            ),
                            SizedBox(height: kSmallHeight),
                            Text(
                                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.subtitle1!),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: kMediumHeight * 2),
                    GestureDetector(
                      onTap: () {
                        print("view");
                      },
                      child: GradientButton("View"),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: darkModeOn
                          ? Colors.black38.withOpacity(0.5)
                          : Colors.grey.shade200.withOpacity(0.5),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPaddingSize),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  "https://avatars.githubusercontent.com/u/36572168?v=4"),
                              radius: 30,
                            ),
                            SizedBox(width: kSmallWidth),
                            Row(
                              children: [
                                Text("Thomas",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.subtitle1!),
                                Icon(
                                  Icons.verified,
                                ),
                              ],
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            print("message");
                          },
                          child: GradientButton("Message"),
                        ),
                      ],
                    )),
              ),
            ],
          );
        });
  }
}

class GradientButton extends StatelessWidget {
  final String text;
  const GradientButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kMediumWidth * 4, vertical: kMediumHeight),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF009FFF), Color(0xFF4A00E0)],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
