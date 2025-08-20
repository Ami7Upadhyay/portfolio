import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/utils/status_bar_color.dart';

import '../../web_view/custom_web_view.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomeState();
}

class _HomeState extends ConsumerState<HomePage> {
  @override
  void initState() {
    StatusBar.setStatusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildContent()),
    );
  }

  Widget _buildContent() {
    return CustomWebView(
      webUrl: "https://flutter.dev/",
    );
  }
}
