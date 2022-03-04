import 'package:away/presentation/shared_widgets/dynamic_header.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: true,
          delegate: MyDynamicHeader(showMessage: true),
        ),
        if (1 > 2)
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 350,
            centerTitle: true,
            collapsedHeight: 150,
            pinned: true,
            elevation: 0,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thomas David",
                    style: GoogleFonts.cabinSketch(fontSize: 45),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Message",
                        style: GoogleFonts.roboto(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            flexibleSpace: Column(
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
                          "https://lh3.googleusercontent.com/ogw/ADea4I47TxMtc8ORxb6jdGA1r3bBLrL4pNTdesEwDViQPZ0",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (1 > 2)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Thomas David",
                    style: GoogleFonts.cabinSketch(fontSize: 45),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Message",
                        style: GoogleFonts.roboto(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        // if (1 > 2)
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
              Container(color: Colors.pink),
            ],
          ),
        ),
      ],
    );
  }
}
