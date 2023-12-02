import 'package:flutter/material.dart';
import 'package:starbucks_app/screen/item_card/widget/item_card_body.dart';

// ignore: must_be_immutable
class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
  });
  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return const ItemCardBody();
  }
}
