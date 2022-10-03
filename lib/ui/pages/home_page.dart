import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/constants.dart';
import '../widgets/variation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorsExt.appDarkBlue, ColorsExt.appBlue],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
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
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 40,
                    top: MediaQuery.of(context).size.height * 0.18,
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.logo,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          Labels.homeTitle,
                          style: GoogleFonts.merriweather(color: Colors.grey[300], fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: MediaQuery.of(context).size.height * 0.07,
                    child: Image.asset(
                      AppImages.homeJuice,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            const VariationWidget(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
