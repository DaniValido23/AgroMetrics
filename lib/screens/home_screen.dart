import 'package:agro_metrics/widgets/custom_bottom_nav_bar.dart';
import 'package:agro_metrics/widgets/slide_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _HomeAppBar(),
      body: const _HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}

class _HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text('Agro Metrics'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HomeBody extends StatefulWidget {
  const _HomeBody();

  @override
  State<_HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<_HomeBody> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Expanded(
              child: Placeholder(),
            ),
            SlideButton(
              isToggled: _isToggled,
              onToggle: () {
                setState(() {
                  _isToggled = !_isToggled;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

