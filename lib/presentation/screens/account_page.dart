import 'package:flutter/material.dart';
import 'package:telebirr/core/theme/theme.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String username = 'badesa';
  String phoneNumber = '+251967344843';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        title: Text('Payment'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(radius: 30, child: Icon(Icons.person, size: 30)),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: theme.colorScheme.scrim,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 1,
                            ),
                            child: Text(
                              'Level 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            phoneNumber,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.qr_code_scanner),
              ],
            ),
            SizedBox(height: 24),
            _buildSettingItem(Icons.person, 'Change Profile'),
            _buildSettingItem(Icons.lock, 'Change PIN'),
            _buildSettingItem(Icons.language, 'Change Language (English)'),
            _buildSettingItem(Icons.security, 'Security Question'),
            _buildSettingItem(Icons.fingerprint, 'Biometric Authentication'),
            _buildSettingItem(Icons.wifi, 'Access on WI-FI'),
            _buildSettingItem(Icons.group_add, 'Invite Friends'),
            _buildSettingItem(Icons.help_outline, 'FAQ'),
            _buildSettingItem(Icons.feedback, 'Feedback'),
            _buildSettingItem(Icons.phone, 'Contact Us'),
            _buildSettingItem(Icons.info_outline, 'About'),
            _buildSettingItem(Icons.share, 'Share'),
            _buildSettingItem(Icons.card_giftcard, 'My Coupon'),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
