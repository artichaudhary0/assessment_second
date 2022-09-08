import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/shop_grid.dart';

class UserHubScreen extends StatelessWidget {
  const UserHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Hub",
              style:
                  GoogleFonts.lora(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Row(
              children: const [
                Icon(
                  Icons.dashboard_outlined,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert,
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 12,
              right: 12,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                7,
              ),
              child: Container(
                padding: const EdgeInsets.all(
                  8,
                ),
                color: Colors.grey.shade300,
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                    ),
                    Container(
                      child: const Text("Search"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
