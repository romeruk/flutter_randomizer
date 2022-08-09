import 'package:flutter/material.dart';
import 'package:flutter_foundations/randomize_state_notifier.dart';
import 'package:flutter_foundations/range_selector_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppWidget()));
}

final randomizerProvider =
    StateNotifierProvider<RandomizeStateNotifier, RandomizerState>(
        (ref) => RandomizeStateNotifier());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RangeSelectorPage(title: 'Flutter Demo Home Page'),
    );
  }
}
