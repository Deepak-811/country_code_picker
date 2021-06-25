# Phone code picker (Country code picker)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)     ![](https://img.shields.io/badge/pub-1.0.0-success)   ![](https://img.shields.io/badge/platform-Android%7C%20%20ios-blue)

If you are looking for an android and iOS library for Country selector or Country Dial Code selector, this is the perfect place for you.



## Features

- Select country or Dial code easily.
- Search country.
- Set the primary color to mach your theme.

## Example

![](https://github.com/Deepak-811/country_code_picker/blob/master/screen-capture.gif?raw=true)

## Installation

Install the dependencies.

```dart
dependencies:
    phone_code_picker: latest-version
```

## Import

```dart
import 'package:phone_code_picker/phone_code_picker.dart';
```

## Usage

User the following code snippet.
Call this function on click.

```dart
void _pickCode(){
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      ///make is isScrollControlled set to true.
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )
      ),
      builder: (_) => Container(
      ///make sure bottom padding is set
      ///otherwise when softkeyboard appears the Modal will be get small.
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
        child: PhoneCodePicker(
          primaryColor: Colors.deepOrange,
          onSelected: (country) {
            ///use the selected country.
             setState(() {
              _selectedCode = country.dialCode;
            });
          },
        ),
      ),
    );
  }
```

## Bugs/Requests

If you encounter any problems please open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it.


## License

MIT License

Copyright (c) 2021 Deepak Gupta

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions :

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,

FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE

AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER

LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



