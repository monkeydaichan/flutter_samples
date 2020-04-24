import 'package:flutter_samples/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/services.dart';

class MainPage extends StatelessWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
        ),
        body: SmsPageBody(),
        // ),
      ),
    );
  }
}

class SmsPageBody extends StatelessWidget {
  SmsPageBody({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    final usermodel = Provider.of<UserModel>(context);
    return Container(
        child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          alignment: Alignment.topLeft,
          child: Text(
            "Input Your Phone Number",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          alignment: Alignment.topLeft,
          child: PhoneNumberInputWidget(),
        ),
        RawMaterialButton(
          onPressed: () {
            usermodel.verifyPhoneNumber(context);
          },
          child: Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 40.0,
          ),
          shape: new CircleBorder(),
          elevation: 1.0,
          fillColor: Theme.of(context).primaryColor,
          padding: const EdgeInsets.all(20.0),
        )
      ],
    ));
  }
}

class PhoneNumberInputWidget extends StatelessWidget {
  PhoneNumberInputWidget({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    final usermodel = Provider.of<UserModel>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CountryCodePicker(
            textStyle: Theme.of(context).textTheme.bodyText1,
            flagWidth: 32.0,
            initialSelection: 'PY',
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
          ),
          PhoneNumberTextField()
        ],
      ),
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  PhoneNumberTextField({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final usermodel = Provider.of<UserModel>(context);
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0),
        child: TextField(
            autofocus: true,
            controller: usermodel.phoneNumberController,
            style: Theme.of(context).textTheme.bodyText1,
            onTap: () {
              print(usermodel.phoneNumberController.text);
            },
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.left,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Your Phone Number",
              hintStyle: Theme.of(context).textTheme.bodyText1,
            )),
      ),
    );
  }
}
