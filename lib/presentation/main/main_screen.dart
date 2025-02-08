import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/bloc/wishlist/wishlist_bloc.dart';
import '../../bloc/bottom navigation/bottom_navigation_bloc.dart';
import '../../bloc/profile/profile_bloc.dart';
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

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              WishlistBloc()..add(const WishlistEvent.fetchWishLists()),
        ),
        BlocProvider(
          create: (context) =>
              ProfileBloc()..add(const ProfileEvent.fetchProfile()),
        ),
        BlocProvider(
          create: (context) => HomeblocBloc()
            ..add(const HomeblocEvent.fetchProductsData())
            ..add(const HomeblocEvent.fetchBannersData()),
        ),
      ],
      child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
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
      ),
    );
  }
}
