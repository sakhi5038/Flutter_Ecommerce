import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/appLocalizations/app_localizations_ar.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:your_project_name/app_localizations.dart';

class EnterPhoneScreen extends StatefulWidget {
  @override
  _EnterPhoneScreenState createState() => _EnterPhoneScreenState();
}

class _EnterPhoneScreenState extends State<EnterPhoneScreen> {
  Locale _currentLocale = Locale('en');

  void _switchLanguage() {
    setState(() {
      if (_currentLocale.languageCode == 'en') {
        _currentLocale = Locale('ar');
      } else {
        _currentLocale = Locale('en');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // var GlobalMaterialLocalizations;
    // var GlobalWidgetsLocalizations;
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      locale: _currentLocale,
      title: 'Enter Phone',
      home: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.translate('enter_phone')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.translate('enter_phone'),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.translate('phone_number'),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text(AppLocalizations.of(context)!.translate('next')),
              onPressed: () {
                // Navigate to the OTP screen
                Navigator.pushNamed(context, '/otp');
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _switchLanguage,
          child: Icon(Icons.language),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class EnterPhoneScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Enter Phone'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Enter Phone',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 16),
//           TextFormField(
//             decoration: InputDecoration(
//               labelText: 'Phone Number',
//             ),
//           ),
//           SizedBox(height: 16),
//           ElevatedButton(
//             child: Text('Next'),
//             onPressed: () {
//               // Navigate to the OTP screen
//               Navigator.pushNamed(context, '/otp');
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
