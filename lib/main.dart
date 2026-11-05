import 'package:flutter/material.dart';
import 'package:whatsapp/app_colors.dart';
import 'message_bubble.dart';

void main() {
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.black,
        appBar: AppBar(
          backgroundColor: AppColors.green,
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/arrow_ic.png',
              width: 9,
              height: 24,
            ),
          ),
          title: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/images/profile_image1.png'),
              ),
              SizedBox(width: 8),
              Text(
                'AbdulRahman',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/phone_ic.png',
                width: 24,
                height: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/video_ic.png',
                width: 24,
                height: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/more_ic.png',
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/patterns.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 16, top: 33),
              child: Column(
                children: [
                  MessageBubble(message: 'Hello !', isIncoming: true),
                  const SizedBox(height: 12),

                  MessageBubble(message: 'Hello !', isIncoming: false),
                  const SizedBox(height: 12),

                  MessageBubble(
                    message:
                        'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
                    isIncoming: true,
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 268,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'what a Great Content Tp learn Flutter',
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 8),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/route_logo.png',
                              width: 237,
                              height: 171,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  MessageBubble(
                    message: 'what a Great Content Tp learn Flutter',
                    isIncoming: false,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.green,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/camera_ic.png',
                              width: 24,
                              height: 24,
                            ),

                            const SizedBox(width: 8),

                            Expanded(
                              child: Text(
                                'Type a Message ...',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                            ),

                            Image.asset(
                              'assets/icons/send_ic.png',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/mic_ic.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
