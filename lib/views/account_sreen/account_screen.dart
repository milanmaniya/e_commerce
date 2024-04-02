import 'package:flutter/material.dart';

class AccountSCreen extends StatefulWidget {
  const AccountSCreen({super.key});

  @override
  State<AccountSCreen> createState() => _AccountSCreenState();
}

class _AccountSCreenState extends State<AccountSCreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Account Screen'),
      ),
    );
  }
}
