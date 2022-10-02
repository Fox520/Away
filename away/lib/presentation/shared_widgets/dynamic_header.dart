import 'package:away/di/locator.dart';
import 'package:away/generated/user_service.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDynamicHeader extends SliverPersistentHeaderDelegate {
  final AwayUser awayUser;
  final loggedInUser = getIt<AwayUser>();
  MyDynamicHeader({required this.awayUser});

  @override
  double get maxExtent => 350.0;

  @override
  double get minExtent => 150;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    bool showMessage = loggedInUser.id != awayUser.id;
    return LayoutBuilder(builder: (context, constraints) {
      final double percentage =
          (constraints.maxHeight - minExtent) / (maxExtent - minExtent);
      return Container(
        height: constraints.maxHeight,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: CircleAvatar(
                  maxRadius: 100,
                  child: ClipOval(
                    child: Image.network(
                      awayUser.profilePictureUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            if (percentage > 0.45)
              Column(
                children: [
                  Text(
                    awayUser.userName,
                    style: GoogleFonts.corben(fontSize: 40 * percentage),
                  ),
                  SizedBox(height: 15 * percentage),
                  if (showMessage)
                    if (percentage > 0.60)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message_outlined,
                            color: Colors.black,
                            size: 25 * percentage,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "Message",
                            style:
                                GoogleFonts.roboto(fontSize: 20 * percentage),
                          ),
                        ],
                      ),
                ],
              ),
            if (percentage < 0.45) SizedBox(height: 80 * percentage)
          ],
        ),
      );
      // return Container(
      //   decoration: BoxDecoration(
      //       boxShadow: [BoxShadow(blurRadius: 4.0, color: Colors.black45)],
      //       gradient: LinearGradient(colors: [Colors.blue, color])),
      //   height: constraints.maxHeight,
      //   child: SafeArea(
      //       child: Center(
      //     child: CircularProgressIndicator(
      //       value: percentage,
      //       valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      //     ),
      //   )),
      // );
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;
}
