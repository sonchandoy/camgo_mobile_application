import 'package:camgo_mobile/common/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldResponeWidget extends StatefulWidget {
  const TextFormFieldResponeWidget({
    Key? key,
    this.msgError = "",
    this.hintText = "",
    this.labelText = "",
    this.suffixIcon,
    this.prefixIcon,
    this.hintStyle,
    this.labelStyle,
    this.autoFocus = false,
    required this.controller,
    this.maxLine,
    this.minLine,
    this.textInputType = TextInputType.text, this.fontSizeError = 10, this.isValidator = true, this.colorsError = Colors.red, this.paddingTextHorizontal = 17, this.paddingTextVertical =10, this.obscureText = false, this.inputFormatters = const[], this.orderRadius = 12,
  }) : super(key: key);
  final String? msgError;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final bool? autoFocus;
  final TextEditingController? controller;
  final int? maxLine;
  final int? minLine;
  final TextInputType textInputType;
  final double? fontSizeError;
  final bool? isValidator;
  final Color colorsError;
  final double? paddingTextHorizontal;
  final double? paddingTextVertical;
  final bool? obscureText;
  final double? orderRadius;
  final List<TextInputFormatter>? inputFormatters;
  @override
  State<TextFormFieldResponeWidget> createState() => _TextFormFieldResponeWidgetState();
}

class _TextFormFieldResponeWidgetState extends State<TextFormFieldResponeWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildContainer(context);
  }
  bool _isErr = true;
  _buildContainer(BuildContext context) {

    var _heightRespone = getSizeFromScreen(getSize(context).height,adScreenSmall: 40,adScreenBig: 40,iosScreenSmall: 40,iosScreenBig: 45);
    return Container(
      height:_isErr?_heightRespone :_heightRespone+20 ,
      child: TextFormField(
        inputFormatters: widget.inputFormatters!,
        obscureText:widget.obscureText! ,
        controller: widget.controller!,
        autofocus: widget.autoFocus!,
        maxLines: widget.maxLine != null ? widget.maxLine : null,
        minLines: widget.minLine != null ? widget.minLine : null,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: widget.colorsError, fontSize: widget.fontSizeError!, height: 1),
          hintText: widget.hintText != "" ? widget.hintText! : null,
          hintStyle: widget.hintStyle != null ? widget.hintStyle! : null,
          labelStyle: widget.labelStyle != null ? widget.labelStyle! : null,
          labelText: widget.labelText != "" ? widget.labelText! : null,
          contentPadding: EdgeInsets.symmetric(horizontal: widget.paddingTextHorizontal!,vertical: widget.paddingTextVertical!),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(widget.orderRadius!)),
          suffixIcon: widget.suffixIcon != null ? widget.suffixIcon : null,
          prefixIcon: widget.prefixIcon != null ? widget.prefixIcon : null,
        ),
        validator: (String? value) {
          if(widget.isValidator!) {
            if (value == null || value.isEmpty) {
              setState(() {
                _isErr = false;
              });
              return widget.msgError!;
            }

            setState(() {
              _isErr = true;
            });
            return null;
          }
          return null;
        },
      ),
    );
  }
}
