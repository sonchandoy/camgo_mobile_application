import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownCustom extends StatelessWidget {
  const DropDownCustom(
      {Key? key,
        this.width = 140,
        this.height = 40,
        required this.item,
        required this.Msg,
        this.selectFirst, this.borderRadius = 12})
      : super(key: key);
  final List<Map>? item;
  final Map? selectFirst;
  final double? width;
  final double? height;
  final void Function(Map) Msg;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return _buildDropDownWidget(item, Msg, selectFirst!);
  }

  Widget _buildDropDownWidget(
      List<Map>? item, void Function(Map) Msg, Map selectFirst) {
    return Container(
      height: height,
      width: width,
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15.0),
              hintText: 'Please select expense',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius!),
              ),
            ),
            isEmpty: selectFirst == '',
            child: DropdownButtonHideUnderline(
              child: DropdownButton<Map>(
                value: selectFirst,
                isDense: true,
                isExpanded: true,
                onChanged: (newValue) {
                  Msg(newValue!);
                },
                items: item!
                    .map(
                      (e) => DropdownMenuItem<Map>(
                    value: e,
                    child: Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(vertical: 2),
                      /*
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.amberAccent, width: 1),
                          ),
                           */
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            child: Image.asset(
                              e['image'],
                              width: 25,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              e['num'],
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
