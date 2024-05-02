
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage(Assets.imagesCardBackground)),
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsetsDirectional.only(start: 31, top: 16, end: 45),
              title: Text(
                "Name card",
                style:
                    TextStyles.textStyleRegular16.copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style:
                    TextStyles.textStyleMedium20.copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 20, bottom: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: TextStyles.textStyleSemiBold24
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "12/20 - 124",
                    style: TextStyles.textStyleMedium16
                        .copyWith(color: Colors.white),
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
