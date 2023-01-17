import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permissions"),
        actions: [
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.camera.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.camera, color: Color(0xff19601E)),
                    Text(
                      "Camera",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.photos.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.photo, color: Color(0xff19601E)),
                    Text(
                      "Photos",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.storage.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      CupertinoIcons.square_stack_3d_down_right_fill,
                      color: Color(0xff19601E),
                    ),
                    Text(
                      "Storage",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status =
                      await Permission.microphone.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.mic, color: Color(0xff19601E)),
                    Text(
                      "Microphone",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.calendar.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.calendar, color: Color(0xff19601E)),
                    Text(
                      "Calendar",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.phone.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.phone, color: Color(0xff19601E)),
                    Text(
                      "Phones",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.audio.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.speaker_3, color: Color(0xff19601E)),
                    Text(
                      "Audio",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.location.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.location_circle_fill,
                        color: Color(0xff19601E)),
                    Text(
                      "Location",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status =
                      await Permission.notification.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.bell, color: Color(0xff19601E)),
                    Text(
                      "Notification",
                      style: textStyle,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () async {
                  PermissionStatus Status = await Permission.videos.request();
                  if (Status == PermissionStatus.granted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is granted",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Permission is Denied",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          ),
                        ),
                        elevation: 1,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  }
                },
                style: buttonStyle,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(CupertinoIcons.videocam_circle_fill,
                        color: Color(0xff19601E)),
                    Text(
                      "Videos",
                      style: textStyle,
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

  TextStyle textStyle = const TextStyle(
    color: Color(0xff19601E),
  );

  ButtonStyle buttonStyle = ButtonStyle(
    side: MaterialStateProperty.all(
      const BorderSide(color: Colors.deepPurple, width: 2),
    ),
    backgroundColor: MaterialStateProperty.all(
      const Color(0xffFBB35F).withOpacity(0.1),
    ),
  );
}
