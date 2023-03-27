import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppUpdatePage extends StatelessWidget {
  const AppUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildHeaderText(),
                const VerticlSpacing(height: 20),
                _buildDescriptionText(),
                const VerticlSpacing(height: 25),
                _buildImage(),
                const VerticlSpacing(height: 25),
                _buildUpdateButton(),
                _buildSkipTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderText() {
    return const Text(
      'Update Available',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescriptionText() {
    return const Text(
      'A new version of the app is available. \n Please update to continue.',
      style: TextStyle(
        fontSize: 14,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildImage() {
    return Image.asset(
      'assets/update_image.png',
      height: 300,
    );
  }

  Widget _buildUpdateButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFC8F00),
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {},
        child: const Text('Update'),
      ),
    );
  }

  Widget _buildSkipTextButton() {
    return TextButton(
      onPressed: () {},
      child: const Text('Skip'),
    );
  }
}

class VerticlSpacing extends SizedBox {
  const VerticlSpacing({super.key, super.height});
}
