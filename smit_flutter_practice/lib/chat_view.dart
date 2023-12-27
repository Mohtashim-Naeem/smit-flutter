import 'package:flutter/material.dart';
import 'package:smit_flutter_practice/widgets.dart/chat_tile.dart';

class chatViewScreen extends StatelessWidget {
  const chatViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: Size(10.0, 80.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15.0,
                    // left: .0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.camera_alt_rounded, color: Colors.white),
                          // SizedBox(
                          //   width: 10,
                          // )
                        ],
                      ),
                      Text(
                        'CHATS',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text('CALLS', style: TextStyle(color: Colors.white)),
                      Text('STATUS', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )),
            scrolledUnderElevation: 200.2,
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert),
              SizedBox(
                width: 20,
              )
            ],
            title: Text('WhatsApp'),
            backgroundColor: Color.fromARGB(255, 7, 94, 84)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
              CustomChatTile(
                  message: 'bhai khidar gayab ho??',
                  time: '7:00 AM',
                  name: 'Mustaqeem',
                  user_image:
                      'https://pps.whatsapp.net/v/t61.24694-24/356815411_297333376126843_7678285888113424176_n.jpg?ccb=11-4&oh=01_AdSGnPTIsREETsI8UNR5ojjDdHAsKbcEl53y8LBxBRrmjA&oe=64E2FD4D'),
              CustomChatTile(
                message: 'Flutter kha tk ho gya??',
                time: '5:30 AM',
                name: 'Mohtashim',
                user_image:
                    'https://pps.whatsapp.net/v/t61.24694-24/354444026_655462179306296_1179076958801134172_n.jpg?ccb=11-4&oh=01_AdTu2PSISA1kvG8EyQJtr6dOySxOi1MyZDTCIu5RimM99w&oe=64E9F8CF',
              ),
              CustomChatTile(
                  message: 'Sir Bilal kesa prha rhe hein??',
                  time: '7:00 PM',
                  name: 'Ahmad Mustafa',
                  user_image:
                      'https://i.pinimg.com/564x/42/87/ed/4287edd3ed899e09e7d1a13f9ca5d60f.jpg'),
              CustomChatTile(
                  message: 'Motashim remote job kroge??',
                  time: '6:05 AM',
                  name: 'Beloved Sir',
                  user_image:
                      'https://media.licdn.com/dms/image/D4D03AQG9sPmfRY1GoQ/profile-displayphoto-shrink_800_800/0/1674135605593?e=1697673600&v=beta&t=JRqkffif9zvzVWavxi5tuilrD4ZaLNvUsdZlu07_Oac'),
            ],
          ),
        ),
      ),
    );
  }
}
