import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/presentation/profile/widgets/components/profile_info_tile.dart';

import '../../../bloc/profile/profile_bloc.dart';
import 'components/profile_header.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileHeader(title: "My Profile"),
              const SizedBox(height: 24),
              ProfileInfoTile(
                  label: "Name", value: state.profileData?.name ?? ""),
              const SizedBox(height: 16),
              ProfileInfoTile(
                  label: "Phone", value: state.profileData?.phoneNumber ?? ""),
            ],
          );
        },
      ),
    );
  }
}
