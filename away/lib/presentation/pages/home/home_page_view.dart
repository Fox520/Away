import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:away/config/constants.dart';
import 'package:away/config/size_config.dart';
import 'package:away/cubit/featured_cubit.dart';
import 'package:away/cubit/promoted_properties_cubit.dart';
import 'package:away/data/models/general_location_info.dart';
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
  List<SingleMinimalProperty> promotedProperties = [];
  GeneralLocationInfo? userLocation;

  @override
  void initState() {
    super.initState();
    // Ensure screen is initialised
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      userLocation = await getIt<UserRepository>().getGeneralUserLocationInfo();
      BlocProvider.of<FeaturedCubit>(context)
          .getFeaturedAreas(userLocation!.countryCode);
      BlocProvider.of<PromotedPropertiesCubit>(context)
          .findPromotedProperties(userLocation!.lat, userLocation!.lon);
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
          child: BlocConsumer<PromotedPropertiesCubit, PromotedPropertiesState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is PromotedPropertiesSearchResult) {
                // If no more properties come back, keep showing what has
                // already been retrieved
                if (state is PromotedPropertiesSearchResult &&
                    promotedProperties.length == 0 &&
                    state.props.length > 0) {
                  promotedProperties = state.props;
                }
                return CarouselSlider(
                  options: CarouselOptions(
                    scrollPhysics: BouncingScrollPhysics(),
                    height: 32 * SizeConfig.heightMultiplier,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayInterval: Duration(seconds: 8),
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      // Increase range
                      BlocProvider.of<PromotedPropertiesCubit>(context)
                          .findPromotedProperties(
                              userLocation!.lat, userLocation!.lon);
                    },
                  ),
                  items: promotedProperties.map((place) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.only(right: kDefaultPaddingSize),
                          child: SmallPropertyPost(place),
                        );
                      },
                    );
                  }).toList(),
                );
              }
              return Container(
                height: 32 * SizeConfig.heightMultiplier,
                width: 32 * SizeConfig.heightMultiplier,
                child: Center(child: CircularProgressIndicator()),
              );
            },
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
  final SingleMinimalProperty place;
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
                  imageUrl: place.property.photos[0].url,
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
                    "📍 ${place.property.town} ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: darkModeOn ? Colors.white : Colors.grey[700],
                        ),
                  ),
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
                        "${place.property.bedrooms} Bedroom ${place.property.propertyCategory}",
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
                    "${place.property.currency} ${place.property.price}",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF00A727),
                          fontSize: 15,
                        ),
                  ),
                ],
              ),
              AutoSizeText(
                "${place.property.title}",
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
