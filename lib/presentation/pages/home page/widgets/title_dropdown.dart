import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TitleDropdown extends StatelessWidget {
  const TitleDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
          width: 30.w,
          child: DropdownButtonFormField<String>(
            value: "Categories",
            items: <String>['Categories', 'Popular', 'Newly added', 'Offer']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            isDense: true,
            onChanged: (_) {},
            decoration:const InputDecoration(label: Text("Selected")),
          ),
        );
  }
}