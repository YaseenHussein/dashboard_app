import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                style: TextStyles.textStyleRegular16(context: context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: TextStyles.textStyleMedium20(context: context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                end: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: TextStyles.textStyleSemiBold24(context: context)
                        .copyWith(color: Colors.white),
                  ),
                  // Spacer(),
                  Text(
                    "12/20 - 124",
                    style: TextStyles.textStyleMedium16(context: context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 27,
              ),
            )
          ],
        ),
      ),
    );
  }
}
