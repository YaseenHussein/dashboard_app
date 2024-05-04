
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/widgets/my_card_widget/dots_inductor.dart';
import 'package:dashboard_app/widgets/my_card_widget/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      if (currentIndex != pageController.page!.round()) {
        currentIndex = pageController.page!.round();
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "My Card",
          style: TextStyles.textStyleSemiBold20(context: context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsInductor(
          currentIndex: currentIndex,
        ),
      ],
    );
  }
}
