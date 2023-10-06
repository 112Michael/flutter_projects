import 'dart:io';
import 'dart:typed_data';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/lib/githubapp/providers/dataprovider.dart';
import 'package:flutter_projects/lib/githubapp/res/constants.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class PreviewPage extends StatefulWidget {
  final Widget card;
  const PreviewPage({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  void initState() {
    super.initState();
  }

  double x = 0;
  double y = 0;

  ScreenshotController screenshotController = ScreenshotController();
  bool capturing = false;
  void capture() async {
    AppConstants.showToast('Exporting Image...');
    setState(() {
      capturing = true;
    });
    Uint8List? s = await screenshotController.capture();
    if (s != null) {
      final tempDir = await getTemporaryDirectory();
      File file = await File('${tempDir.path}/snapshot_repo.png').create();
      file.writeAsBytesSync(s);
      await Share.shareXFiles([XFile(file.path)], text: 'Share your snapshot');
    }
    setState(() {
      capturing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
        backgroundColor: Colors.yellow,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const SizedBox(),
          actions: capturing
              ? []
              : [
            GestureDetector(
              onTap: () => capture(),
              child: Icon(
                CupertinoIcons.share,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'asset/${context.watch<UserDataProvider>().selectedBackground}',
              ),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: GestureDetector(
              onDoubleTap: () {
                setState(() {
                  x = 0;
                  y = 0;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  y = y - details.delta.dx / 100;
                  x = x + details.delta.dy / 100;
                });
              },
              child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(x)
                    ..rotateY(y),
                  child: widget.card),
            ),
          ),
        ),
      ),
    );
  }
}
