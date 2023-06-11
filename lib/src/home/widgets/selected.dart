import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/home_provider.dart';

class Selected extends StatelessWidget {
  const Selected({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProivder = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton<String>(
          onChanged: (value) {
            homeProivder.selectedItems(value!);
            // selectedItem = value!;
          },
          // hint: const Text("Please select"),
          value: homeProivder.selectedItem,
          items: homeProivder.dropdownItems.map((e) {
            return DropdownMenuItem<String>(
              value: e,
              child: Text(
                e,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
