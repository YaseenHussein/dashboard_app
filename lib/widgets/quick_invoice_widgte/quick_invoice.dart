import 'package:dashboard_app/model/user_list_tile_info_model.dart';
import 'package:dashboard_app/utils/app_styles.dart';
import 'package:dashboard_app/utils/assets_data.dart';
import 'package:dashboard_app/widgets/custom_background_container.dart';
import 'package:dashboard_app/widgets/drawer_widget/user_list_tile_info.dart';
import 'package:dashboard_app/widgets/quick_invoice_widgte/quick_invoice_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          ),
          CustomTextField()
        ],
      ),
    );
  }
}

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: TextStyles.textStyleMedium16,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}

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

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Type customer name',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none);
}
