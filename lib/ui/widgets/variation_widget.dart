import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import 'variation_card.dart';

class VariationWidget extends StatelessWidget {
  const VariationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              Labels.varieties,
              style: TextStyle(color: Colors.grey[400], fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: const [
              Expanded(child: VariationCard(asset: AppImages.berries2)),
              SizedBox(width: 15),
              Expanded(child: VariationCard(asset: AppImages.oranges)),
              SizedBox(width: 15),
              Expanded(child: VariationCard(asset: AppImages.strawberry)),
            ],
          )
        ],
      ),
    );
  }
}
