
import 'package:flutter/material.dart';

import 'package:dial_code_picker/dial_code_picker.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _selectedCode='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Country code picker'),
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: _pickCode,
                child: Text('Pick Dial code'),
              ),
            ),

            Text('$_selectedCode'),
          ],
        ),
    );
  }

  void _pickCode(){
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )
      ),
      builder: (_) => Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
        child: DialCodePicker(
          primaryColor: Colors.deepOrange,
          onSelected: (country) {
            setState(() {
              _selectedCode = country.dialCode;
            });
          },
        ),
      ),
    );
  }
}
