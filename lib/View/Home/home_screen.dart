import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/Resources/Colors/colors.dart';
import 'package:weather_app/Resources/images/image_assets.dart';
import 'package:weather_app/View/Home/Components/app_bar.dart';
import 'package:weather_app/View/Home/Components/container_list.dart';
import 'package:weather_app/View/Home/Components/hours_list.dart';
import 'package:weather_app/View/Home/Components/info_card.dart';
import 'package:weather_app/View/Home/Components/location.dart';
import 'package:weather_app/View/Next-Days/next_14_days.dart';
import 'package:weather_app/ViewModel/Controllers/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: AppColors.buildGradientBoxDecoration(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(ImageAssets.bg), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                // const CustomAppBar(),
                // Location(),
                Hero(
                  tag: "TAG",
                  child: Material(
                    color: Colors.transparent,
                    child: InfoCard(),
                  ),
                ),
                ContainerList(),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Get.to(() => NextDays()),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Next 14 Days >",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                HoursList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
