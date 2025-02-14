import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:public_services_app/utils/Ui_Cards/Ui_Card_Search_Bar.dart';
import 'package:public_services_app/utils/responsive/responsive.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Responsive.isMobile(context)
                  ? Axis.horizontal
                  : Axis.horizontal,
              children: [UiCardSearchBar()],
            )
          ],
        ),
      ),
    );
  }
}
