import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:real_estate/core/core.dart';
import 'package:real_estate/views/widgets/listing_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffF8F8F8),
                Color(0xffF5D8B4),
              ],
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: false,
            title: Animate().custom(
              begin: 10,
              end: 175,
              duration: 1.seconds,
              builder: (_, value, __) {
                return Container(
                  height: 45,
                  width: value,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.01),
                        blurRadius: 10,
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.location5,
                        size: 22,
                        color: primaryGreen,
                      ),
                      Gap(5),
                      Text(
                        'Saint Petersburg',
                        style: TextStyle(
                          color: primaryGreen,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ).animate().fadeIn(delay: 1.7.seconds),
                );
              },
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: kScreenHorizontalPadding),
                child: Image.asset(
                  '$imageAssetPath/person.png',
                  height: 50,
                  width: 50,
                ).animate().scale(
                      duration: 1.seconds,
                    ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(35),
                Padding(
                  padding: const EdgeInsets.only(
                    left: kScreenHorizontalPadding,
                  ),
                  child: const Text(
                    'Hi, Marina',
                    style: TextStyle(
                      color: primaryGreen,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ).animate().fadeIn(
                        delay: 2.5.seconds,
                      ),
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: kScreenHorizontalPadding,
                  ),
                  child: const Text(
                    "let's select your\nperfect place",
                    style: TextStyle(
                      color: primaryBlack,
                      fontSize: 33,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                      .animate()
                      .fadeIn(
                        delay: 2.9.seconds,
                      )
                      .move(
                        begin: const Offset(0, 30),
                        curve: Curves.decelerate,
                      ),
                ),
                const Gap(35),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kScreenHorizontalPadding,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 170,
                          padding: const EdgeInsets.only(top: 15),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryOrange,
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'BUY',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Gap(25),
                              Animate().custom(
                                delay: 4.seconds,
                                duration: 900.ms,
                                begin: 0,
                                end: 1034,
                                builder: (_, value, __) => Text(
                                  '${value.round()}',
                                  style: const TextStyle(
                                    color: white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Text(
                                'offers',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ).animate().scale(
                              delay: 3.5.seconds,
                              duration: 900.ms,
                            ),
                      ),
                      const Gap(10),
                      Expanded(
                        child: Container(
                          height: 170,
                          padding: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: white,
                          ),
                          child: Column(
                            children: [
                              const Text(
                                'RENT',
                                style: TextStyle(
                                  color: primaryGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Gap(25),
                              Animate().custom(
                                delay: 4.seconds,
                                duration: 900.ms,
                                begin: 0,
                                end: 2212,
                                builder: (_, value, __) => Text(
                                  '${value.round()}',
                                  style: const TextStyle(
                                    color: primaryGreen,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const Text(
                                'offers',
                                style: TextStyle(
                                  color: primaryGreen,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ).animate().scale(
                              delay: 3.5.seconds,
                              duration: 900.ms,
                            ),
                      ),
                    ],
                  ),
                ),
                const Gap(30),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: white,
                  ),
                  child: const Column(
                    children: [
                      ListingItem(
                        image: '$imageAssetPath/listing-1.jpg',
                        title: 'Gladkova St., 25',
                      ),
                      Gap(10),
                      Row(
                        children: [
                          Expanded(
                            child: ListingItem(
                              image: '$imageAssetPath/listing-2.jpg',
                              title: 'Gladkova St., 25',
                            ),
                          ),
                          Gap(10),
                          Expanded(
                            child: ListingItem(
                              image: '$imageAssetPath/listing-3.jpg',
                              title: 'Trefoleva St., 43',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
                    .animate(
                      delay: 5.7.seconds,
                    )
                    .slideY(
                      duration: 800.ms,
                      begin: 1,
                      end: 0,
                      curve: Curves.decelerate,
                    ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
