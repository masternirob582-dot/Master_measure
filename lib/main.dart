import 'package:flutter/material.dart';

void main() {
  runApp(const MasterMeasurementApp());
}

class MasterMeasurementApp extends StatelessWidget {
  const MasterMeasurementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Measurement',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const items = <List<Object>>[
    ['ফিক্সড গ্যাপ', Icons.space_bar],
    ['সমান ভাগ', Icons.view_column],
    ['টেপ মেজার', Icons.straighten],
    ['গ্রিল লেআউট', Icons.grid_on],
    ['দরজা ও জানালা', Icons.door_front_door],
    ['কাটিং লিস্ট', Icons.content_cut],
    ['প্রজেক্ট হিস্ট্রি', Icons.history],
    ['PDF এক্সপোর্ট', Icons.picture_as_pdf],
    ['সেটিংস', Icons.settings],
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('মাস্টার মেজারমেন্ট')),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        children: [
          for (final item in items)
            Card(
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('শীঘ্রই আসছে')),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item[1] as IconData, size: 44, color: scheme.primary),
                    const SizedBox(height: 10),
                    Text(item[0] as String, textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
