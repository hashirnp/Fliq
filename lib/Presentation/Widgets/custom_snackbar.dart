import 'package:flutter/material.dart';

class CustomSnackbarWidget extends StatelessWidget {
  const CustomSnackbarWidget({
    super.key,
    required this.isSuccess,
    required this.messege,
  });

  final bool isSuccess;
  final String messege;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(
            messege,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
