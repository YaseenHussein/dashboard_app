import 'package:dashboard_app/model/user_list_tile_info_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserListTileInfo extends StatelessWidget {
  const UserListTileInfo({
    super.key,
    required this.items,
  });
  final UserListTileInfoModel items;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(
            items.image,
            fit: BoxFit.scaleDown,
          ),
          title: Text(
            items.title,
            style: TextStyles.textStyleSemiBold16,
          ),
          subtitle: Text(
            items.subtitle,
            style: TextStyles.textStyleRegular12,
          ),
        ),
      ),
    );
  }
}
