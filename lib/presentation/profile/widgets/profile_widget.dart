import 'package:flutter/material.dart';
import 'package:zybo_machine_test/presentation/profile/widgets/components/profile_info_tile.dart';

import 'components/profile_header.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileHeader(title: "My Profile"),
          SizedBox(height: 24),
          ProfileInfoTile(label: "Name", value: "John Mathew"),
          SizedBox(height: 16),
          ProfileInfoTile(label: "Phone", value: "+91 9477575738"),
        ],
      ),
    );
  }
}
