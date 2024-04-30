
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.isActive = false});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          // padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: isActive
                ? const Color(0xffFAFAFA).withOpacity(0.10)
                : const Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                isActive ? Colors.white : const Color(0xff4EB7F2),
                BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: isActive ? Colors.white : const Color(0xff064061),
        )
      ],
    );
  }
}
