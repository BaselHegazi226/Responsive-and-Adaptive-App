import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/item_details_view.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/list_tile_item.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ItemDetailsView(
                    number: index + 1,
                  );
                },
              ),
            );
          },
          child: ListTileItem(index: index),
        );
      },
    );
  }
}
