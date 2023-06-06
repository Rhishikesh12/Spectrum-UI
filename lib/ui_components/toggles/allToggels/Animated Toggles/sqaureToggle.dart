import 'package:flutter/material.dart';

class CustomToggleButton5 extends StatefulWidget {
  const CustomToggleButton5({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomToggleButton5State createState() => _CustomToggleButton5State();
}

class _CustomToggleButton5State extends State<CustomToggleButton5> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
      },
      child: AnimatedContainer(
        // margin: const EdgeInsets.only(left: 140, right: 140),
        duration: const Duration(milliseconds: 200),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: _isToggled ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'ON',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  'OFF',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  _isToggled ? Alignment.centerRight : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
