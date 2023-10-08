import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../../Features/home/data/models/book_model/book_model.dart';
import '../../widgets/custom_widgets/show_snackbar.dart';

Future<void> customLaunchUrl(BuildContext context, BookModel book) async {
  final Uri url = Uri.parse(book.volumeInfo.previewLink!);
  if (book.volumeInfo.previewLink != null) {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  } else {
    showSnackBar(context, "Free Preview is Unavailable");
  }
}
