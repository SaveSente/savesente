import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String _selectedWallet = '';
  String _selectedMethod = '';

  @override
  void dispose() {
    _amountController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Center(
            child: Text(
              'WITHDRAW FROM WALLET',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
          ),
          SizedBox(height: 30),
          
          // Select wallet
          Text(
            'Select wallet:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedWallet.isEmpty ? null : _selectedWallet,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
              hint: Text(
                'Choose wallet',
                style: TextStyle(color: Colors.grey[500]),
              ),
              items: [
                'Savings Wallet',
                'Investment Wallet',
                'Emergency Wallet',
                'Main Wallet',
              ].map((String wallet) {
                return DropdownMenuItem<String>(
                  value: wallet,
                  child: Text(wallet),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedWallet = newValue ?? '';
                });
              },
            ),
          ),
          SizedBox(height: 25),
          
          // Amount
          Text(
            'Amount:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(height: 25),
          
          // Select method
          Text(
            'Select method:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonFormField<String>(
              value: _selectedMethod.isEmpty ? null : _selectedMethod,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
              hint: Text(
                'Select withdrawal method',
                style: TextStyle(color: Colors.grey[500]),
              ),
              items: [
                'Mobile Money',
                'Bank Transfer',
                'Cash Pickup',
                'Crypto',
              ].map((String method) {
                return DropdownMenuItem<String>(
                  value: method,
                  child: Text(method),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedMethod = newValue ?? '';
                });
              },
            ),
          ),
          SizedBox(height: 25),
          
          // Phone Number
          Text(
            'Phone Number:',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          SizedBox(height: 20),
          
          // Success message
          Text(
            'Success! Check your balance for notification.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.teal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}