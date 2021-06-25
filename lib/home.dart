
import 'package:flutter/material.dart';

import 'package:dial_code_picker/dial_code_picker.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Country code picker'),
      ),
        body: Center(
          child: TextButton(
            onPressed: _pickCode,
            child: Text('Pick Dial code'),
          ),
        ),
    );
  }

  Future<void> _pickCode()async{
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
            print(country.code);
          },
        ),
      ),
    );
  }
}
