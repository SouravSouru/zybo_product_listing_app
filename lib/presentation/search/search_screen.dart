import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';
import 'package:zybo_machine_test/injection/service_locator.dart';
import 'package:zybo_machine_test/presentation/search/widgets/search_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<HomeblocBloc>(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: const SafeArea(child: SearchWidget()),
      ),
    );
  }
}
