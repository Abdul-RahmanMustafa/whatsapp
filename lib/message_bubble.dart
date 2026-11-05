import 'package:flutter/material.dart';

import 'app_colors.dart';

class MessageBubble extends StatelessWidget {
  String message;
  bool isIncoming;

  MessageBubble({required this.message, required this.isIncoming,});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isIncoming ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 268
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: isIncoming ? AppColors.green : AppColors.grey,
          borderRadius: isIncoming
              ? BorderRadius.only(
                  topLeft: Radius.zero,
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                )
              : BorderRadius.only(
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
        ),
        child: Column(
          children: [
            Text(
              message,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16,
                fontWeight:FontWeight.w500
              ),
            ),
          ],
        ),
      ),
    );
  }
}
