import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneNumberDropdown extends StatefulWidget {
  const PhoneNumberDropdown({super.key});

  @override
  State<PhoneNumberDropdown> createState() => _PhoneNumberDropdownState();
}

class _PhoneNumberDropdownState extends State<PhoneNumberDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("+20", style: TextStyle(fontSize: 16, color: Colors.black)),
          const VerticalDivider(
            width: 20,
            thickness: 1,
            indent: 20,
            endIndent: 0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
