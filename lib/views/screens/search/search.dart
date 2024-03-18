import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';

import 'package:real_estate/core/core.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isToggled = useState(true);
    final isModalOpen = useState(false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Iconsax.search_normal_1,
                        size: 22,
                        color: primaryBlack,
                      ),
                      Gap(8),
                      Text(
                        'Saint Petersburg',
                        style: TextStyle(
                          color: primaryBlack,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ).animate().fadeIn(curve: Curves.easeOut).scale(
                      duration: 400.ms,
                    ),
              ),
              const Gap(7),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.candle_2,
                  size: 22,
                  color: primaryBlack,
                ),
              ).animate().fadeIn(curve: Curves.easeOut).scale(
                    duration: 400.ms,
                  ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              '$imageAssetPath/map.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            child: AnimatedContainer(
              height: 50,
              duration: 600.ms,
              padding: const EdgeInsets.symmetric(horizontal: 17),
              decoration: const BoxDecoration(
                color: primaryOrange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: isToggled.value
                    ? const Text(
                        r'13,3 mn $',
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : const Icon(
                        Iconsax.empty_wallet,
                        size: 18,
                        color: white,
                      ),
              ),
            ).animate().scaleXY(
                  begin: 0.5,
                  alignment: Alignment.bottomLeft,
                ),
          ),
          Positioned(
            top: 240,
            right: 20,
            child: AnimatedContainer(
              height: 50,
              duration: 600.ms,
              padding: const EdgeInsets.symmetric(horizontal: 17),
              decoration: const BoxDecoration(
                color: primaryOrange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: isToggled.value
                    ? const Text(
                        r'13,3 mn $',
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : const Icon(
                        Iconsax.empty_wallet,
                        size: 18,
                        color: white,
                      ),
              ),
            ).animate().scaleXY(
                  begin: 0.5,
                  alignment: Alignment.bottomLeft,
                ),
          ),
          Positioned(
            top: 340,
            right: 70,
            child: AnimatedContainer(
              height: 50,
              duration: 600.ms,
              padding: const EdgeInsets.symmetric(horizontal: 17),
              decoration: const BoxDecoration(
                color: primaryOrange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: isToggled.value
                    ? const Text(
                        r'13,3 mn $',
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : const Icon(
                        Iconsax.empty_wallet,
                        size: 18,
                        color: white,
                      ),
              ),
            ).animate().scaleXY(
                  begin: 0.5,
                  alignment: Alignment.bottomLeft,
                ),
          ),
          Positioned(
            top: 440,
            left: 70,
            child: AnimatedContainer(
              height: 50,
              duration: 600.ms,
              padding: const EdgeInsets.symmetric(horizontal: 17),
              decoration: const BoxDecoration(
                color: primaryOrange,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Center(
                child: isToggled.value
                    ? const Text(
                        r'13,3 mn $',
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    : const Icon(
                        Iconsax.empty_wallet,
                        size: 18,
                        color: white,
                      ),
              ),
            ).animate().scaleXY(
                  begin: 0.5,
                  alignment: Alignment.bottomLeft,
                ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
          bottom: 90,
          right: 15,
          left: 50,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSwitcher(
                  duration: 500.ms,
                  child: isModalOpen.value
                      ? Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.shield_tick,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    const Gap(6),
                                    Text(
                                      'Cosy areas',
                                      style: TextStyle(
                                        color: primaryBlack.withOpacity(.45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: const Row(
                                  children: [
                                    Icon(
                                      Iconsax.empty_wallet,
                                      size: 18,
                                      color: primaryOrange,
                                    ),
                                    Gap(6),
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                        color: primaryOrange,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.bag,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    const Gap(6),
                                    Text(
                                      'Infastructure',
                                      style: TextStyle(
                                        color: primaryBlack.withOpacity(.45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(15),
                              InkWell(
                                onTap: () {
                                  isToggled.value = !isToggled.value;
                                  isModalOpen.value = !isModalOpen.value;
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Iconsax.layer,
                                      size: 18,
                                      color: primaryBlack.withOpacity(.45),
                                    ),
                                    const Gap(6),
                                    Text(
                                      'Without any layer',
                                      style: TextStyle(
                                        color: primaryBlack.withOpacity(.45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ).animate().scaleXY(
                            begin: 0.5,
                            alignment: Alignment.bottomLeft,
                          )
                      : InkWell(
                          onTap: () => isModalOpen.value = !isModalOpen.value,
                          borderRadius: BorderRadius.circular(100),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 4,
                                sigmaY: 4,
                              ),
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200.withOpacity(0.35),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Iconsax.layer,
                                    size: 20,
                                    color: white,
                                  ),
                                ),
                              ),
                            ),
                          ).animate().fadeIn(),
                        ),
                ),
                const Gap(5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 4,
                      sigmaY: 4,
                    ),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.35),
                      ),
                      child: const Center(
                        child: Icon(
                          Iconsax.direct_up,
                          size: 20,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.35),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Iconsax.textalign_left,
                        size: 20,
                        color: white,
                      ),
                      Gap(5),
                      Text(
                        'List of variants',
                        style: TextStyle(
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
