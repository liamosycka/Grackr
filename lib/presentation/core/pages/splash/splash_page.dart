import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _SplashPageWidget();
  }
}

class _SplashPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Grackr',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 4,
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  backgroundColor: colorScheme.onBackground,
                  strokeWidth: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
