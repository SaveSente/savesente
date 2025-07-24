import 'package:flutter/material.dart';

class BackWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  
  const BackWidget({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: Color(0xFFD0D0D0),
      child: Row(
        children: [
          Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: onPressed ?? () => Navigator.pop(context),
            child: Text(
              'Back to home screen',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}