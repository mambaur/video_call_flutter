import 'package:flutter/material.dart';
import 'package:video_call_flutter/config.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  final String userName;
  const CallPage({super.key, required this.userName});

  final String callID = 'call_id';

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: Config
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Config
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userName,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
