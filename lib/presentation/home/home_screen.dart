import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';

import '../../bloc/home/homebloc_bloc.dart';
import 'widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeblocBloc()
        ..add(const HomeblocEvent.fetchProductsData())
        ..add(const HomeblocEvent.fetchBannersData()),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: const SafeArea(child: HomeWidget()),
      ),
    );
  }
}
