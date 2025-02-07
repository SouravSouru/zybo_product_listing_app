import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zybo_machine_test/core/generated/generated_assets.dart';

import '../../bloc/bottom navigation/bottom_navigation_bloc.dart';
import '../../shared/widgets/app_bottom_navigation.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../wishlist/wishlist_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const HomeScreen(),
      const WishlistScreen(),
      const ProfileScreen(),
    ];

    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CustomBottomNavBar(
            selectedIndex: state.selectedIndex,
            onItemSelected: (index) {
              context
                  .read<BottomNavigationBloc>()
                  .add(BottomNavigationEvent.changeTab(index));
            },
          ),
          body: screens[state.selectedIndex],
        );
      },
    );
  }
}
