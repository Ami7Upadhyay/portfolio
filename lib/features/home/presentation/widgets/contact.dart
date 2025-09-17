import 'package:flutter/material.dart';

import '../../../../shared/widgets/title_header.dart';

final contactsKey = GlobalKey();

class Contacts extends StatelessWidget {
  const Contacts({super.key});

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
      children: [TitleHeader(title: 'contacts')],
    );
  }
}
