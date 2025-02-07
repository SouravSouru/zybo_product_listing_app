import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputFileds extends StatelessWidget {
  const OtpInputFileds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        length: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        keyboardType: TextInputType.number,
        defaultPinTheme: PinTheme(
          width: 76,
          height: 58,
          margin: const EdgeInsets.only(left: 16),
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          decoration: BoxDecoration(
            color: const Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.18),
                offset: const Offset(-2, -2),
                blurRadius: 4,
                spreadRadius: 0,
                blurStyle: BlurStyle.inner,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
