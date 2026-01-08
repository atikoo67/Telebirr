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
      backgroundColor: theme.colorScheme.shadow,
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 15),
        foregroundColor: theme.colorScheme.secondary,
        backgroundColor: theme.colorScheme.primary,
        title: Text('Account'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Icon(Icons.search)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          spacing: 2,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(radius: 30, child: Icon(Icons.person, size: 50)),
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
                                borderRadius: BorderRadius.circular(3),
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
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(
                              phoneNumber,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.qr_code_scanner, color: theme.colorScheme.primary),
                  Icon(Icons.chevron_right, color: theme.colorScheme.primary),
                ],
              ),
            ),

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
      tileColor: theme.colorScheme.secondary,
      leading: Icon(icon, color: theme.colorScheme.primary),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
