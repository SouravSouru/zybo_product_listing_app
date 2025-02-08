import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zybo_machine_test/bloc/home/homebloc_bloc.dart';
import 'package:zybo_machine_test/core/utilities/controllers/controllers.dart';
import 'package:zybo_machine_test/core/utilities/getters/get_colors.dart';
import 'package:zybo_machine_test/injection/service_locator.dart';

import '../../../../core/generated/generated_assets.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x74747474).withOpacity(0.16),
              offset: const Offset(0, 4),
              blurRadius: 25,
              spreadRadius: 0,
            ),
          ],
        ),
        child: TextField(
          controller: HomeControllers.search,
          onChanged: (v) {
            locator
                .get<HomeblocBloc>()
                .add(const HomeblocEvent.searchProduct());
          },
          decoration: InputDecoration(
            hintText: " Search",
            hintStyle:
                GoogleFonts.lato(fontWeight: FontWeight.w400, fontSize: 14),
            suffixIcon: SizedBox(
              width: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: const Color(0xff2B4248),
                    width: 1.5,
                    height: 20,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    Assets.assetsSvgsSearch,
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
