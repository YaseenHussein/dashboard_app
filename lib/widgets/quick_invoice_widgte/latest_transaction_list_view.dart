
import 'package:dashboard_app/model/user_list_tile_info_model.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:dashboard_app/widgets/drawer_widget/user_list_tile_info.dart';
import 'package:flutter/cupertino.dart';

///here we use to solution
///the first is use row but this solution use with few items for Example have 5 or 7 items
///and we don't need to use lazy build like list view
///but we use the anther solution if we have a lot of items
class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });
  static const List<UserListTileInfoModel> items = [
    UserListTileInfoModel(
      image: Assets.imagesAvater2,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserListTileInfoModel(
      image: Assets.imagesAvater2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserListTileInfoModel(
      image: Assets.imagesAvater1,
      title: "Lekan Okeowo",
      subtitle: "demo@gmail.com",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(child: UserListTileInfo(items: e)))
            .toList(),
      ),
    );
    /* return SizedBox(
      height: 74,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return IntrinsicWidth(
            child: UserListTileInfo(
              items: items[index],
            ),
          );
        },
      ),
    );
  
  */
  }
}
