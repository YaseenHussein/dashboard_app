import 'package:dashboard_app/model/drawer_item_model.dart';
import 'package:dashboard_app/model/user_list_tile_info_model.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:dashboard_app/widgets/drawer_widget/drawer_item.dart';
import 'package:dashboard_app/widgets/drawer_widget/drawer_list_view.dart';
import 'package:dashboard_app/widgets/drawer_widget/user_list_tile_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserListTileInfo(
              items: UserListTileInfoModel(
                image: Assets.imagesAvater3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          DrawerListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Setting system",
                    image: Assets.imagesSetting,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
