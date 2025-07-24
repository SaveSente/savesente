import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 30,
            offset: Offset(5, 7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Home button
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedHome01,
                color: Colors.white,
                size: 28.0, 
              ),
              SizedBox(width: 8),
              Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          
          // Raised profile button
          Transform.translate(
            offset: Offset(0, -40), // Raised higher
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: HugeIcon(
                icon: HugeIcons.strokeRoundedUser,
                color: Colors.black,
                size: 28.0,
              ),
            ),
          ),
          
          // Wallets button with icon and label in same line
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HugeIcon(
                icon: HugeIcons.strokeRoundedKeyframesDoubleRemove,
                color: Colors.white,
                size: 28.0,
              ),
              SizedBox(width: 8),
              Text(
                'Wallets',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}