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

class LoginByEmailPage extends StatefulWidget {
  const LoginByEmailPage({Key? key}) : super(key: key);

  @override
  _LoginByEmailPageState createState() => _LoginByEmailPageState();
}

class _LoginByEmailPageState extends State<LoginByEmailPage> {
  final TextEditingController _txtPhone = TextEditingController();
   late  double? height ;

  @override
  Widget build(BuildContext context) {
    height = getSize(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.0,
        toolbarHeight: 35,
      ),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Form(
      child: LayoutBuilder(
        builder: (context,constraint){
          return SingleChildScrollView(
            child:ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight
              ),
              child: IntrinsicHeight(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

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
                      TextFormFieldResponeWidget(
                        controller: _txtPhone,
                        hintText: "Email",
                        orderRadius: 5,
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
                      Container(alignment: Alignment.center,child: const ShowTextWidget(text: "Forgot Password?",fontSize: 16,colors: Colors.black,fontWeight: FontWeight.bold,)),

                    ],
                  ),
                ),
              ),
            )
          );
        },
      )
    );
  }
}
