import 'package:camgo_mobile/common/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ButtonResponseWidget extends StatelessWidget {
  const ButtonResponseWidget(
      {Key? key,
        this.color = Colors.black,
        this.outlinedBorder,
        required this.onPress,
        this.text = "",
        this.width_heigh_svg = 15,
        this.svgIcon = "",
        this.textStyleButton,
        this.backGroundColorsButton = Colors.black,
        this.enableButton = false, this.mainAxisAlignmentRowTextAndSvg = MainAxisAlignment.center, this.suffixSvgIcon="", this.prefixSvgIcon="", this.spaceSuffixPrefixSvgIcon = 0})
      : super(key: key);
  final Color color;
  final OutlinedBorder? outlinedBorder;
  final void Function() onPress;
  final String? text;
  final double? width_heigh_svg;
  final String? svgIcon;
  final TextStyle? textStyleButton;
  final Color? backGroundColorsButton;
  final bool? enableButton;
  final MainAxisAlignment mainAxisAlignmentRowTextAndSvg;
  final String? suffixSvgIcon;
  final String? prefixSvgIcon;
  final double? spaceSuffixPrefixSvgIcon;

  @override
  Widget build(BuildContext context) {
    var _heightRespone = getSizeFromScreen(getSize(context).height,
        adScreenSmall: 40,
        adScreenBig: 40,
        iosScreenSmall: 40,
        iosScreenBig: 45);
    return _buttonResponse(_heightRespone);
  }

  _buttonResponse(double? heightRespone) {
    return Container(
      height: heightRespone,
      child: IgnorePointer(
        ignoring: enableButton!,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: backGroundColorsButton, shape: outlinedBorder),
          onPressed: onPress,
          child: text!.isNotEmpty || prefixSvgIcon!.isNotEmpty || suffixSvgIcon!.isNotEmpty
              ? Row(
            mainAxisAlignment: mainAxisAlignmentRowTextAndSvg,
            children: [
              prefixSvgIcon!.isNotEmpty ? SvgPicture.asset(
                 prefixSvgIcon!,
                fit: BoxFit.contain,
                width: width_heigh_svg,
                height: width_heigh_svg,
              ) : SizedBox() ,
              SizedBox(width:spaceSuffixPrefixSvgIcon ,),
              Text(
                text!,
                style: textStyleButton != null
                    ? textStyleButton
                    : TextStyle(),
              ),
              SizedBox(width:spaceSuffixPrefixSvgIcon ,),
              prefixSvgIcon!.isNotEmpty? SvgPicture.asset(
                 suffixSvgIcon!,
                fit: BoxFit.contain,
                width: width_heigh_svg,
                height: width_heigh_svg,
              ) : SizedBox(),
            ],
          )
              : (svgIcon!.isEmpty
              ? SizedBox()
              : SvgPicture.asset(
            svgIcon!.isEmpty ? "" : svgIcon!,
            fit: BoxFit.contain,
            width: width_heigh_svg,
            height: width_heigh_svg,
          )),
        ),
      ),
    );
  }
}
