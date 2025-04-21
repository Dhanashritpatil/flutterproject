import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'church_locatoe.dart';

class ReceiptScreen extends StatelessWidget {
  const ReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Receipt",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChurchLocatorScreens()),
              );
            }),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.home),
            
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Receipt #1D0EC",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(height: 24),
            _buildDetail("Donation"),
            _buildDetail("Date"),
            _buildDetail("Entered"),
            _buildDetail("Paid Via"),
            _buildDetail("Pay TM"),
            _buildDetail("Status"),
            _buildDetail("Payment Success"),
            _buildDetail("Payment"),
            _buildDetail("Id"),
            _buildDetail("Event"),
            _buildDetail("Event On"),
            _buildDetail("Purpose"),
            _buildDetail("Amount (INR)"),
            _buildDetail("Processed by"),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  await _downloadReceipt(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 4,
                ),
                child: const Text("Download receipt"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetail(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Future<void> _downloadReceipt(BuildContext context) async {
    final pdf = pw.Document();

    if (Platform.isAndroid) {
      var status = await Permission.storage.request();
      if (!status.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Storage permission denied")),
        );
        return;
      }
    }

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text('Receipt #1D0EC', style: pw.TextStyle(fontSize: 24)),
              pw.SizedBox(height: 10),
              pw.Text('Donation'),
              pw.Text('Date'),
              pw.Text('Entered'),
              pw.Text('Paid Via'),
              pw.Text('Pay TM'),
              pw.Text('Status'),
              pw.Text('Payment Success'),
              pw.Text('Payment'),
              pw.Text('Id'),
              pw.Text('Event'),
              pw.Text('Event On'),
              pw.Text('Purpose'),
              pw.Text('Amount (INR)'),
              pw.Text('Processed by'),
            ],
          );
        },
      ),
    );

    final outputDir = await getExternalStorageDirectory();
    final filePath = '${outputDir!.path}/receipt_1D0EC.pdf';
    final file = File(filePath);
    await file.writeAsBytes(await pdf.save());

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Receipt downloaded to: $filePath")),
    );
  }
}
