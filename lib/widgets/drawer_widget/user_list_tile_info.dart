import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: TextStyles.textStyleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: TextStyles.textStyleRegular12,
        ),
      ),
    );
  }
}
