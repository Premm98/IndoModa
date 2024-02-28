import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: IconButton(
                color: const Color.fromARGB(255, 105, 124, 84),
                icon: const Icon(Icons.settings),
                iconSize: 150,
                onPressed: () {},
              ),
            ),
            Text(
              'Something',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Bla Bla Bla',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          child: const Text('Save Details'),
          onPressed: () {},
        ),
      ),
    );
  }
}
