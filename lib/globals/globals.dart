import 'package:portfoliolance/generated/assets.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Map<String, dynamic>> projectList = [
  {
    'title': 'Swift Scanner',
    'subtitle':
        'A Free Mobile Document Scanner, PDF Creator and Viewer, Barcode Scanner, Image to Text Converter',
    'project_link': 'https://github.com/chayan-1906/Swift-Scanner',
    'play_store':
        'https://play.google.com/store/apps/details?id=com.pdas.swift_scanner',
    'project_icon': Assets.projectImagesSwiftScannerAppIcon,
    'image': [
      Assets.projectImagesSwiftScannerHomeScreen,
      Assets.projectImagesSwiftScannerPdfViewScreen,
      Assets.projectImagesSwiftScannerBarcodeScanner,
      Assets.projectImagesSwiftScannerImageToText,
    ],
  },
  {
    'title': 'Ecommerce App',
    'subtitle':
        'The Ecommerce App is a Flutter Project. Here, sellers can upload a product according to a particular category & brand. Customers can navigate the products using category & brand name just like amazon, flipkart apps. Also, customers can add his/her choiceable products in cart as well as wishlist. After adding to cart, it’s also possible to order the products (added in cart) using an online stripe payment method (using Debit / Credit Card). This app has the facility to change light to dark theme or vice-versa. Also, users can choose their own language as required (English by default, Hindi, Spanish, Persian, Arabic & Urdu).',
    'project_link': 'https://github.com/chayan-1906/Ecommerce-App',
    'project_icon': Assets.projectImagesSwiftScannerAppIcon,
    'play_store': '',
    'image': [
      Assets.projectImagesEcommerceHomeScreen,
      Assets.projectImagesEcommerceBrandNavigationRail,
      Assets.projectImagesEcommerceFeedsScreen,
      Assets.projectImagesEcommerceCartScreen,
      Assets.projectImagesEcommerceProductDetailsScreen,
    ],
  },
  {
    'title': 'Forest Fire Detection and Control System',
    'subtitle':
        'The app is built for Head Office as well as Regional Office. In the main page, it will show whether the fire is detected or not. Head office will be able to sort the reg offices according to their username/email/distance. If fire is detected, the Head office can send a request to any regional office. Now the regional office may accept the request or may decline and correspondingly the UI of the head office will be changed so that head office gets to know. After extinguishing the fire at that location, the regional office has to inform the head office and simultaneously a report will be generated.',
    'project_link': '',
    'project_icon': Assets.projectImagesForestFireAppIcon,
    'play_store': '',
    'image': [],
  },
];

bool isStringInvalid({required String text}) {
  bool isInvalid = true;
  if (text.isNotEmpty && text != null && text != 'null') {
    isInvalid = false;
  }
  return isInvalid;
}

Future<void> launchURL({required String url}) async {
  await canLaunchUrl(Uri.parse(url))
      ? await launchUrl(Uri.parse(url))
      : throw 'Could not launch $url';
}

/*Future<void> launchMailTo() async {
  /*final mailToLink = Mailto(
    to: ['padmanabhadas9647@gmail.com'],
    cc: [],
    bcc: [],
    subject: '',
    body: '',
  );
  await launch('$mailToLink');*/
  print('launchMailTo');
  final Email email = Email(
    body: 'Email body',
    subject: 'Email subject',
    recipients: ['padmanabhadas9647@gmail.com'],
    cc: [''],
    bcc: [''],
    attachmentPaths: [''],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}
*/
