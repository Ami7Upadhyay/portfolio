import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/extensions/media_query_extenstion.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../shared/widgets/title_header.dart';
import 'contact-form.dart';

final contactsKey = GlobalKey();

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  // helper function to open links
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return _buildContent(context);
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      key: contactsKey,
      margin: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(flex: 2, child: _contactMe(context)),
        ],
      ),
    );
  }

  Widget _contactMe(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleHeader(title: 'contacts'),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.2),
            child: ContactForm()),
      ],
    );
  }
}
