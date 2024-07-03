import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../themes/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.apptheame,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "My Profile",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Fady",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              "fady123@gmail.com",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            buildListTileWithBorder(
              title: 'Personal information',
              leadingIcon: Icons.person,
              onpressed: () {},
            ),
            buildListTileWithBorder(
              title: 'Transaction',
              leadingIcon: Icons.wallet_rounded,
              onpressed: () {
                context.go('/transaction_view');

              },
            ),
            buildListTileWithBorder(
              title: 'Change language',
              leadingIcon: Icons.sort_by_alpha,
              onpressed: () {},
            ),
            buildListTileWithBorder(
              title: 'My reviews',
              leadingIcon: Icons.star_border,
              onpressed: () {},
            ),
            buildListTileWithBorder(
              title: 'Settings',
              leadingIcon: Icons.settings,
              onpressed: () {},
            ),
            buildListTileWithBorder(
              title: 'Help center',
              leadingIcon: Icons.question_mark_rounded,
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListTileWithBorder({
    required String title,
    required IconData leadingIcon,
    required VoidCallback onpressed,
    double borderRadius = 10.0,
  }) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 8.0, right: 8.0),
      child: ListTile(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey.shade200, width: 0.9),
            borderRadius: BorderRadius.circular(10)),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ThemeColor.profiletile),
        ),
        leading: Icon(
          leadingIcon,
          color: ThemeColor.profiletile,
        ),onTap: onpressed,
      ),
    );
  }
}
