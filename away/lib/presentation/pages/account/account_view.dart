import 'package:away/config/constants.dart';
import 'package:away/presentation/shared_widgets/dynamic_header.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: MyDynamicHeader(showMessage: false),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.only(
                left: kDefaultPaddingSize,
                right: kDefaultPaddingSize,
                bottom: kDefaultPaddingSize),
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPaddingSize, vertical: kMediumHeight),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: darkModeOn
                  ? Colors.black38.withOpacity(0.5)
                  : Colors.grey.shade200.withOpacity(0.7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Me",
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 80.0,
          delegate: SliverChildListDelegate(
            [
              AccountViewEntry(iconData: Icons.person, title: "Account"),
              AccountViewEntry(iconData: Icons.home, title: "My Properties"),
              AccountViewEntry(
                  iconData: Icons.ac_unit, title: "Interesting Option"),
              AccountViewEntry(iconData: Icons.settings, title: "Settings"),
              AccountViewEntry(iconData: Icons.help, title: "FAQ"),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountViewEntry extends StatelessWidget {
  final IconData iconData;
  final String title;
  AccountViewEntry({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      margin:
          EdgeInsets.symmetric(horizontal: kDefaultPaddingSize, vertical: 10),
      decoration: BoxDecoration(
          color: darkModeOn
              ? Colors.black12.withOpacity(0.4)
              : Colors.grey.shade200.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 40),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }
}
