import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: CachedNetworkImageProvider(
                                    'https://media.istockphoto.com/id/1432945641/vector/mega-sale-special-offer-stage-podium-percent-stage-podium-scene-with-for-award-decor-element.jpg?s=612x612&w=0&k=20&c=-HlukgcjnUL_kbAvQ7m7vC3RIYMjELlNd2AJXpwf6HQ=')),
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
                  dotsCount: [1, 2, 3, 4, 5].length,
                  position: 1)),
        ],
      ),
    );
  }
}
