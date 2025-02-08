import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zybo_machine_test/data/models/banner_model/banner_model.dart';

import '../../../../bloc/home/homebloc_bloc.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeblocBloc, HomeblocState>(
      builder: (context, state) {
        final List<BannerModel> banners = state.bannersList ?? [];

        if (state.isBannersListLoading) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              height: 140,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(13)),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        return SizedBox(
          height: 180,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                child: CarouselSlider(
                  carouselController: CarouselSliderController(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {},
                    height: 140,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlay: true,
                  ),
                  items: banners.map((banner) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: CachedNetworkImageProvider(
                                        banner.image ?? "")),
                                borderRadius: BorderRadius.circular(13)),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: DotsIndicator(
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(20, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      dotsCount: banners.isEmpty ? 2 : banners.length,
                      position: 1)),
            ],
          ),
        );
      },
    );
  }
}
