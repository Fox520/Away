import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:away/config/constants.dart';
import 'package:away/config/size_config.dart';
import 'package:away/cubit/featured_cubit.dart';
import 'package:away/data/repositories/user_repository.dart';
import 'package:away/di/locator.dart';
import 'package:away/generated/property_service.pb.dart';
import 'package:away/presentation/pages/search_page/search_page.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    // Ensure screen is initialised
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      final location =
          await getIt<UserRepository>().getGeneralUserLocationInfo();
      BlocProvider.of<FeaturedCubit>(context)
          .getFeaturedAreas(location.countryCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text(
            "Away",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: kDefaultPaddingSize),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(SearchPage.routeName);
                },
                child: Icon(
                  CupertinoIcons.search,
                  color: Theme.of(context).iconTheme.color,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: kDefaultPaddingSize),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.conversation_bubble,
                  color: Theme.of(context).iconTheme.color,
                  size: 30,
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kMediumHeight),
                Row(
                  children: [
                    Text("Suitable ",
                        style: Theme.of(context).textTheme.headline5),
                    AnimatedTextKit(
                        repeatForever: true,
                        pause: Duration(seconds: 2),
                        animatedTexts: ["home", "apartment", "flat", "room"]
                            .map(
                              (text) => FadeAnimatedText(
                                text,
                                textStyle:
                                    Theme.of(context).textTheme.headline5,
                                duration: Duration(seconds: 2),
                              ),
                            )
                            .toList()),
                  ],
                ),
                SizedBox(height: kMediumHeight * 2),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: BlocBuilder<FeaturedCubit, FeaturedState>(
            builder: (context, state) {
              if (state is FeaturedResponse) {
                final areas = state.areas;
                return CarouselSlider(
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    height: 29.58 * SizeConfig.heightMultiplier,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayInterval: Duration(seconds: 8),
                    autoPlay: true,
                  ),
                  items: areas.map((place) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to map at coords
                      },
                      child: FeaturedItem(place),
                    );
                  }).toList(),
                );
              }
              return Container(
                height: 29.58 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: kMediumHeight * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promoted",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(letterSpacing: 0.41),
                    ),
                    Text(
                      "See all",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          letterSpacing: 0.41,
                          color: CupertinoColors.activeBlue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: kMediumHeight * 3),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: CarouselSlider(
            options: CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(),
              height: 32 * SizeConfig.heightMultiplier,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(seconds: 2),
              autoPlayInterval: Duration(seconds: 8),
              autoPlay: true,
            ),
            items: [
              "https://images.prop24.com/267180470",
              "https://media.cntraveler.com/photos/5ea354e75e5dc70008d054b9/16:9/w_2560%2Cc_limit/24912891-australia-3.jpg",
              "https://static.trip101.com/main_pics/261395/medium.jpg",
              "https://floridatrippers.com/wp-content/uploads/2020/07/airbnb-in-florida-sanctuary-of-light-1600x900.jpg",
              "https://images.prop24.com/267180470",
            ].map((place) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.only(right: kDefaultPaddingSize),
                    child: SmallPropertyPost(place),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: kMediumHeight * 3),
        )
      ],
    );
  }
}

class FeaturedItem extends StatelessWidget {
  final FeaturedArea area;
  FeaturedItem(this.area);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 29.58 * SizeConfig.heightMultiplier,
          child: CachedNetworkImage(
            imageUrl: area.photoURL,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(
              Icons.error,
              color: Colors.red,
            ),
          ),
        ),
        Positioned(
          left: kMediumWidth,
          bottom: kMediumHeight,
          child: Text(
            area.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class SmallPropertyPost extends StatelessWidget {
  final String place;
  SmallPropertyPost(this.place);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 21.74 * SizeConfig.heightMultiplier,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: place,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: kSmallWidth, top: kSmallHeight),
                  decoration: BoxDecoration(
                    color: darkModeOn
                        ? CupertinoColors.darkBackgroundGray
                        : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "📍 Oshakati ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: darkModeOn ? Colors.white : Colors.grey[700],
                        ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(kMediumWidth),
                      margin: EdgeInsets.only(right: kSmallWidth),
                      decoration: BoxDecoration(
                        color: darkModeOn
                            ? CupertinoColors.darkBackgroundGray
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.pets,
                        color: darkModeOn ? Colors.white : Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(kMediumWidth),
                      decoration: BoxDecoration(
                        color: darkModeOn
                            ? CupertinoColors.darkBackgroundGray
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.wifi,
                        color: darkModeOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kSmallHeight),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "2 Bedroom Flat",
                        style: CupertinoTheme.of(context)
                            .textTheme
                            .textStyle
                            .copyWith(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0086F6),
                              fontSize: 15,
                            ),
                      ),
                    ],
                  ),
                  Text(
                    "N\$ 2500",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00A727),
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              AutoSizeText(
                "A perfect get away apartment for touasjvdh asjdv as",
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: darkModeOn ? Colors.white : Colors.black87,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
