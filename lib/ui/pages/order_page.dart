import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/constants.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 5),
        child: FloatingActionButton(
          backgroundColor: Colors.grey[300],
          foregroundColor: ColorsExt.appBlue,
          onPressed: () {},
          child: const Icon(Icons.shopping_cart_outlined),
        ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [ColorsExt.appDarkBlue, ColorsExt.appBlue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            constraints: const BoxConstraints.expand(),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(.7), BlendMode.multiply),
              child: Image.asset(
                AppImages.berries,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: IconButton(
                    icon: Image.asset(
                      AppImages.logo,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: SvgPicture.asset(
                    AppIcons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.juice, color: Colors.white),
                const SizedBox(height: 15),
                Text(
                  Labels.orderBerries,
                  style: GoogleFonts.merriweather(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  Labels.orderBerriesDescription,
                  style: GoogleFonts.merriweather(
                    color: Colors.grey[300],
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  Labels.juicePrice,
                  style: GoogleFonts.merriweather(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey[300]!, width: 2),
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 75),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    Labels.orderExtra,
                    style: GoogleFonts.merriweather(
                      color: Colors.grey[300],
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
