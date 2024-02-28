import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Management',
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
                icon: const Icon(Icons.account_circle_outlined),
                iconSize: 150,
                onPressed: () {},
              ),
            ),
            Text(
              'Personal Information',
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
