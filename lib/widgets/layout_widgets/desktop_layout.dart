import 'package:flutter/material.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/item_details_view.dart';
import 'package:responsive_app_test_1/widgets/layout_widgets/list_tile_item.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
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
                child: ListTileItem(
                  index: index,
                  color: Colors.amber,
                ),
              );
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  number = index + 1;
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
                child: ListTileItem(
                  index: index,
                  color: Colors.transparent,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
