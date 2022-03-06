import 'package:camgo_mobile/common/functions/functions.dart';
import 'package:camgo_mobile/screens/widget/button_widget/button_rec_cirl_response_widget.dart';
import 'package:camgo_mobile/screens/widget/dropdown/dropdown_phone_widget.dart';
import 'package:camgo_mobile/screens/widget/icon_widget/icon_with_dynamic_shape_widget.dart';
import 'package:camgo_mobile/screens/widget/input_widget/text_form_field_response.dart';
import 'package:camgo_mobile/screens/widget/line_widget/line_verical_widget.dart';
import 'package:camgo_mobile/screens/widget/show_text_widget/show_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'login_by_email_page.dart';

class LoginByPhonePage extends StatefulWidget {
  const LoginByPhonePage({Key? key}) : super(key: key);

  @override
  _LoginByPhonePageState createState() => _LoginByPhonePageState();
}

class _LoginByPhonePageState extends State<LoginByPhonePage> {
  final TextEditingController _txtPhone = TextEditingController();
  List<Map>? _myCountry = [
    {
      'id': '1',
      'image': 'assets/icons/Group3315.png',
      'num': '+884',
    },
    {
      'id': '2',
      'image': 'assets/icons/Group3314@2x.png',
      'num': '+885',
    },
    {
      'id': '3',
      'image': 'assets/icons/Group3313@3x.png',
      'num': '+886',
    },
  ];
  late double? height;

  late Map? firstValue = _myCountry![0];

  @override
  Widget build(BuildContext context) {
    height = getSize(context).height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 35,
      ),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Form(child: LayoutBuilder(
      builder: (context, constraint) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: IntrinsicHeight(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 20,),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //   ],
                  // ),
                  Image.asset("assets/icons/Group3340@2x.png"),
                  ShowTextWidget(
                    text: "Join the community",
                    fontSize: 16,
                  ),
                  ShowTextWidget(
                    text: "OneAccount",
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      DropDownCustom(
                        borderRadius: 5,
                        height: 45,
                        selectFirst: firstValue,
                        item: _myCountry!,
                        Msg: (m) => setState(() {
                          print("Home $m");
                          int index = int.parse(m['id']);
                          firstValue = _myCountry![index - 1];
                          print("---firstValue---$firstValue");
                        }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextFormFieldResponeWidget(
                        controller: _txtPhone,
                        hintText: "Phone Number",
                        orderRadius: 5,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormFieldResponeWidget(
                    controller: _txtPhone,
                    hintText: "Password",
                    orderRadius: 5,
                    suffixIcon: Icon(Icons.visibility_outlined),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonResponseWidget(
                    text: "Log In",
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: const ShowTextWidget(
                        text: "Forgot Password?",
                        fontSize: 16,
                        colors: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: const [
                      Expanded(child: LineVerticalWidget()),
                      SizedBox(
                        width: 5,
                      ),
                      ShowTextWidget(
                        text: "or use email",
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(child: LineVerticalWidget())
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  IconWithShapeWidget(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => LoginByEmailPage()));
                    },
                  ),
                  Expanded(
                      child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShowTextWidget(
                          text: "Don't have an account?",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ShowTextWidget(
                          text: "Sign Up",
                          fontWeight: FontWeight.bold,
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
        ));
      },
    ));
  }
}
