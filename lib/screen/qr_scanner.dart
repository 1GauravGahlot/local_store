import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:sample3/color/colour.dart';

class QrScanner extends StatefulWidget {
  @override
  _QrScannerState createState() => _QrScannerState();
}

class _QrScannerState extends State<QrScanner> {
  var listQR = [];
  bool flashStatus = false;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode res;
  QRViewController controller;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        animationSpeed: 300,
        closeManually: true,
        gradient: buttonGradient,
        elevation: 30,
        gradientBoxShape: BoxShape.circle,
        visible: true,
        curve: Curves.decelerate,
        children: [
          // FAB 1
          SpeedDialChild(
              child: Icon(
                Icons.lightbulb_outline_rounded,
                color: flashStatus ? Colors.yellowAccent[700] : Colors.white,
                size: flashStatus ? 30 : 20,
              ),
              backgroundColor: iconColour,
              onTap: () async {
                await controller.toggleFlash();
                flashStatus = await controller.getFlashStatus();
                setState(() {});
              },
              label: " Flash: ${flashStatus ? "ON" : "OFF"}" /* flashStatus ? " Flash ON" : "Flash OFF" */,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16.0),
              labelBackgroundColor: dropDownListColour),
          // FAB 2
          SpeedDialChild(
              child: Icon(Icons.upload_outlined),
              backgroundColor: radioButtonActiveColour,
              onTap: () {
                print("Submit");
              },
              label: 'Submit',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16.0),
              labelBackgroundColor: dropDownListColour)
        ],
      ),

      /* FloatingActionButton(
        onPressed: () async {
          await controller.toggleFlash();
          flashStatus = await controller.getFlashStatus();          
          setState(() {});
        },
        backgroundColor: Color(0XFF0096C7),
        splashColor: Color(0XFF023E8A),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
                color: flashStatus
                    ? Colors.yellowAccent[700]
                    : Color(0XFF0096C7))),
        child: Icon(
          Icons.lightbulb_outline_rounded,
          color: flashStatus ? Colors.yellowAccent[700] : Colors.white,
          size: flashStatus ? 30 : 20,
        ),
      ), */
      body: GestureDetector(
        onDoubleTap: () async {
          controller.resumeCamera();
        },
        child: Container(
          child: _buildQrView(context),
        ),
      ),
      /*  Column(
        children: [
          Expanded(flex: 1, child: _buildQrView(context)),
          ElevatedButton(
              onPressed: () async {
                print(listQR);                
              },
              child: Text("View Stored content"))
        ],
      ), */
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.height < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 220.0;

    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        cutOutBottomOffset: MediaQuery.of(context).size.height * 0.1,
        borderColor: Color(0XFF023E8A),
        borderRadius: 25,
        borderLength: 40,
        borderWidth: 5,
        cutOutSize: scanArea,
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((data) {
      print(data.code);
      print(data.format);
      print(data.rawBytes);
      res = data;
      if (listQR.isEmpty) {
        listQR.add(data.code);
      } else {
        if (listQR.contains(data.code)) {
          print("Element Present");
        } else {
          listQR.add(data.code);
        }
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
