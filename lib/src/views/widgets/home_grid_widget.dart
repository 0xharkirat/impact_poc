import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:impact_poc/src/models/data/menu_item_data.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class HomeGridWidget extends StatelessWidget {
  const HomeGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight / 4.8;
    final iconContainerSize = cardHeight * 0.5;
    final iconSize = cardHeight * 0.25;

    return GridView.builder(
      padding: const EdgeInsets.all(4),
      itemCount: menuItems.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: cardHeight,
      ),
      itemBuilder: (context, index) {
        final item = menuItems[index];

        return GestureDetector(
          onTap: () {
            log('Tapped on ${item.title}, route: ${item.route}');
            // Navigate or trigger action
            item.route != null ? context.pushNamed(item.route!) : null;
          },
          child: ShadCard(
            padding: const EdgeInsets.only(bottom: 4),
            height: cardHeight,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  // Circular avatar-style icon
                  Expanded(
                    child: Container(
                      width: iconContainerSize,
                      height: iconContainerSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Center(
                        child: Icon(
                          item.icon,
                          size: iconSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ),

                  // Title text
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: iconSize * 0.30,
                      fontWeight: FontWeight.w500,

                      color:
                          ShadTheme.of(context).colorScheme.secondaryForeground,
                    ),

                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
