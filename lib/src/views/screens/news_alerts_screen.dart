import 'package:flutter/material.dart';
import 'package:impact_poc/src/models/data/alerts_news_items.dart';
import 'package:impact_poc/src/views/base_scaffold.dart';
import 'package:impact_poc/src/views/widgets/tab_bar_list_view_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class NewsAlertsScreen extends StatelessWidget {
  const NewsAlertsScreen({super.key, required this.showDrawer});
  final bool showDrawer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = ShadTheme.of(context).colorScheme;

    return DefaultTabController(
      length: 2,
      child: BaseScaffold(
        title: "News & Alerts",
        showDrawer: showDrawer,
        body: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: colorScheme.primary.withValues(blue: 0.85),
                border: Border(
                  top: BorderSide(
                    color: colorScheme.foreground.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
              ),
              labelColor: colorScheme.primaryForeground,

              labelStyle: const TextStyle(fontWeight: FontWeight.w600),
              tabs: const [Tab(text: 'News'), Tab(text: 'Alerts')],
            ),
            Expanded(
              child: TabBarView(
                children: [

                  /// News Tab
                  TabBarListViewWidget(
                    items: newsItems,
                    iconData: LucideIcons.newspaper,
                  ),

                  /// Alerts Tab
                  TabBarListViewWidget(
                    items: alertsItems,
                    iconData: LucideIcons.bell,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
