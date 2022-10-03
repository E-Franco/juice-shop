// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:juice_shop/ui/pages/order_page.dart';

class VariationCard extends StatelessWidget {
  const VariationCard({
    Key? key,
    required this.asset,
  }) : super(key: key);

  final String asset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(CupertinoPageRoute(builder: (_) => const OrderPage())),
      child: SizedBox(
        height: 175,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            asset,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
