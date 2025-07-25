// import 'package:flutter/material.dart';
// import 'package:hugeicons/hugeicons.dart';
// import '../widgets/wallet_widget.dart';
// import '../widgets/back_widget.dart';
// import '../screens/home_screen.dart';

// class WalletScreen extends StatelessWidget {
//   const WalletScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE5E5E5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//               color: Colors.black,
//               child: Row(
//                 children: [
//                   HugeIcon(
//                     icon: HugeIcons.strokeRoundedMenu01,
//                     color: Colors.white,
//                     size: 24.0,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     'WALLETS',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            
//             // Action buttons
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//               color: Color(0xFFE5E5E5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Create wallet button
//                   Column(
//                     children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.2),
//                               blurRadius: 8,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Icon(
//                           Icons.add,
//                           color: Colors.black,
//                           size: 28,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       Text(
//                         'Create\na\nwallet',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),
//                     ],
//                   ),
                  
//                   // Deposit button
//                   Column(
//                     children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.2),
//                               blurRadius: 8,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Icon(
//                           Icons.keyboard_double_arrow_right,
//                           color: Colors.black,
//                           size: 24,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       Text(
//                         'Deposit\nto\nwallet',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),
//                     ],
//                   ),
                  
//                   // Withdraw button
//                   Column(
//                     children: [
//                       Container(
//                         width: 60,
//                         height: 60,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.2),
//                               blurRadius: 8,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: Icon(
//                           Icons.keyboard_double_arrow_left,
//                           color: Colors.black,
//                           size: 24,
//                         ),
//                       ),
//                       SizedBox(height: 12),
//                       Text(
//                         'Withdraw\nfrom\nwallet',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                           height: 1.2,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
            
//             // Create wallet widget
//             Expanded(
//               child: Wallet(),
//             ),
            
//             // Back widget with navigation
//             GestureDetector(
//   onTap: () {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => Home()),
//     );
//   },
//   child: BackWidget(),
// ),

//           ],
//         ),
//       ),
//     );
//   }
// }











// import 'package:flutter/material.dart';
// import 'package:hugeicons/hugeicons.dart';
// import '../widgets/wallet_widget.dart';
// import '../widgets/back_widget.dart';
// import '../widgets/deposit_widget.dart';
// import '../widgets/withdraw_widget.dart';
// import '../screens/home_screen.dart';

// class WalletScreen extends StatefulWidget {
//   const WalletScreen({super.key});

//   @override
//   State<WalletScreen> createState() => _WalletScreenState();
// }

// class _WalletScreenState extends State<WalletScreen> {
//   Widget? _currentWidget;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFE5E5E5),
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//               color: Colors.black,
              
//               child: Row(
//                 children: [
//                   HugeIcon(
//                     icon: HugeIcons.strokeRoundedMenu01,
//                     color: Colors.white,
//                     size: 24.0,
//                   ),
//                   SizedBox(width: 20),
//                   Text(
//                     'WALLETS',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       letterSpacing: 1.2,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            
//             // Action buttons
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
//               color: Color(0xFFE5E5E5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   // Create wallet button
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _currentWidget = Wallet();
//                       });
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.2),
//                                 blurRadius: 8,
//                                 offset: Offset(0, 4),
//                               ),
//                             ],
//                           ),
//                           child: Icon(
//                             Icons.add,
//                             color: Colors.black,
//                             size: 28,
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           'Create\na\nwallet',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black,
//                             height: 1.2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                   // Deposit button
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _currentWidget = Deposit();
//                       });
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.2),
//                                 blurRadius: 8,
//                                 offset: Offset(0, 4),
//                               ),
//                             ],
//                           ),
//                           child: Icon(
//                             Icons.keyboard_double_arrow_right,
//                             color: Colors.black,
//                             size: 24,
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           'Deposit\nto\nwallet',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black,
//                             height: 1.2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
                  
//                   // Withdraw button
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _currentWidget = Withdraw();
//                       });
//                     },
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             shape: BoxShape.circle,
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.2),
//                                 blurRadius: 8,
//                                 offset: Offset(0, 4),
//                               ),
//                             ],
//                           ),
//                           child: Icon(
//                             Icons.keyboard_double_arrow_left,
//                             color: Colors.black,
//                             size: 24,
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         Text(
//                           'Withdraw\nfrom\nwallet',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: Colors.black,
//                             height: 1.2,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            
//             // Dynamic widget area
//             Expanded(
//               child: SingleChildScrollView(
//                 child: _currentWidget ?? Container(
//                   width: double.infinity,
//                   constraints: BoxConstraints(
//                     minHeight: MediaQuery.of(context).size.height - 
//                              MediaQuery.of(context).padding.top - 
//                              200, // Approximate space for header + buttons + back widget
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
                  
//                   ),
//                 ),
//               ),
//             ),
            
//             // Back widget with navigation
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Home()),
//                 );
//               },
//               child: BackWidget(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }









import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import '../widgets/create_wallet_widget.dart';
import '../widgets/back_widget.dart';
import '../widgets/deposit_widget.dart';
import '../widgets/withdraw_widget.dart';
import '../screens/home_screen.dart';

class WalletScreen extends StatefulWidget {
  final Widget? initialWidget;
  
  const WalletScreen({super.key, this.initialWidget});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  Widget? _currentWidget;

  @override
  void initState() {
    super.initState();
    // Set the initial widget if provided
    _currentWidget = widget.initialWidget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.black,
              
              child: Row(
                children: [
                  HugeIcon(
                    icon: HugeIcons.strokeRoundedMenu01,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'WALLETS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            
            // Action buttons
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              color: Color(0xFFE5E5E5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Create wallet button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentWidget = Wallet();
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 28,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Create\na\nwallet',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Deposit button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentWidget = Deposit();
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.keyboard_double_arrow_right,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Deposit\nto\nwallet',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Withdraw button
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentWidget = Withdraw();
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.keyboard_double_arrow_left,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Withdraw\nfrom\nwallet',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            height: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            // Dynamic widget area
            Expanded(
              child: SingleChildScrollView(
                child: _currentWidget ?? Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height - 
                             MediaQuery.of(context).padding.top - 
                             200, // Approximate space for header + buttons + back widget
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  
                  ),
                ),
              ),
            ),
            
            // Back widget with navigation
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: BackWidget(),
            ),
          ],
        ),
      ),
    );
  }
}