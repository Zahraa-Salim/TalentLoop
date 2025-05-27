import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../helper/background_style1.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifications = [
      {
        'title': 'New Request Received!',
        'subtitle': 'You have a new skill exchange request. Check it out!',
        'icon': Icons.request_page,
      },
      {
        'title': 'Upcoming Session Reminder',
        'subtitle': 'Your skill exchange session with Hala is tomorrow at 5 PM.',
        'icon': Icons.schedule,
      },
      {
        'title': 'Share Your Skills!',
        'subtitle': 'Encourage others by posting about your new skills or services.',
        'icon': Icons.campaign,
      },
      {
        'title': 'Community Update',
        'subtitle': 'Join the upcoming workshop on collaborative skill sharing.',
        'icon': Icons.event_available,
      },
      {
        'title': 'Give Us Your Feedback!',
        'subtitle': 'Share your experience with your latest skill exchange.',
        'icon': Icons.feedback,
      },
      {
        'title': 'Schedule Your Next Session',
        'subtitle': 'Plan your next exchange session with Sara today.',
        'icon': Icons.schedule_send,
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.softCream,
      body: Stack(
        children: [
          const BackgroundStyle1(),
          SafeArea(
            child: Column(
              children: [
                // Custom header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios, color: AppColors.darkTeal),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      const Expanded(
                        child: Text(
                          'Notifications',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkTeal,
                          ),
                        ),
                      ),
                      const SizedBox(width: 48), // To balance back icon
                    ],
                  ),
                ),

                Expanded(
                  child: ListView.separated(
                    itemCount: notifications.length,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    separatorBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 1,
                      ),
                    ),
                    itemBuilder: (context, index) {
                      final notification = notifications[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(vertical: 6),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: AppColors.tealShade100,
                              child: Icon(
                                notification['icon'],
                                color: AppColors.darkTeal,
                                size: 20,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    notification['title'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    notification['subtitle'],
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
