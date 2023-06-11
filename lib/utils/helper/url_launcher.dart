// import 'package:flutter/material.dart';
// import 'package:project_cic/src/utils/controller/alert_snackbar.dart';
// import 'package:url_launcher/url_launcher.dart';

// Future<void> callLaunchUrl({
//   required url,
//   required LaunchMode mode,
//   WebViewConfiguration? webViewConfiguration,
// }) async {
//   try {
//     if (!await launchUrl(
//       Uri.parse(url),
//       mode: mode,
//     )) {
//       debugPrint('Could not launch : $url');
//       throw 'Could not launch $url';
//     }
//   } on Exception catch (e) {
//     alertErrorSnackbar(
//       title: "Error",
//       message: "Could not launch $url",
//     );
//     debugPrint('Erorr: $e');
//   }
// }
