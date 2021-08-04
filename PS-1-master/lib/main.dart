import 'dart:io';

import 'package:easy_folder_picker/FolderPicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_archive/flutter_archive.dart';
import 'package:ftptester/dialogBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<File> files;
  late File file;
  late File zipFile;
  bool fileZipped = false;
  bool connectionSuccess = false;
  TextEditingController ipAddress = TextEditingController();
  TextEditingController portNumber = TextEditingController();
  void uploadFunctionForSingleFile() async {
    setState(() {
      status = "Sending file";
    });

    var dio = Dio();
    var formData = FormData.fromMap({
      'docFile': await MultipartFile.fromFile(
        zipFile.path,
      ),
      'name': zipFile.path.split('/').last,
    });
    print("created form now trying sending");
    try {
      var response = await dio.post(
        'http://${ipAddress.text.trim()}:${portNumber.text.trim()}/ftp/sendSingleFile/',
        data: formData,
      );
      setState(() {
        fileZipped = false;
        status = response.toString();
      });
    } catch (e) {
      if (e is DioError) {
        setState(() {
          e.message;
        });
      }
    }
  }

  void singleFilePicker() async {
    setState(() {
      status = "Picking files";
    });
    // FilePickerResult? result =
    //     await FilePicker.platform.pickFiles(allowMultiple: false);

    Directory? directory;
    if (directory == null) {
      directory = Directory(FolderPicker.ROOTPATH);
    }
    print(directory);
    print(directory.path);
    Directory? newDirectory = await FolderPicker.pick(
      allowFolderCreation: false,
      context: context,
      rootDirectory: Directory(FolderPicker.ROOTPATH),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
    if (newDirectory == null) {
      setState(() {
        status = "Picking failed";
      });
      return;
    }
    // if (result != null) {
    //   files = result.paths.map((path) => File(path!)).toList();
    //   setState(() {
    //     status = files.map((e) => e.toString()).toSet().toString();
    //     file = files[0];
    //   });
    //
    //   String selectedPath =
    //       files[0].path.substring(0, files[0].path.lastIndexOf('/'));
    //
    //   setState(() {
    //     status = files[0].path;
    //   });
    //   print(status);

    // final dataDir = Directory(selectedPath);

    try {
      setState(() {
        status = "wait zipping files";
      });
      zipFile =
          File(newDirectory.path + "/${newDirectory.path.split("/").last}.zip");

      await ZipFile.createFromDirectory(
        sourceDir: newDirectory,
        zipFile: zipFile,
        includeBaseDirectory: true,
        recurseSubDirs: true,
        onZipping: (str, done, data) {
          if (str.contains("zip")) return ZipFileOperation.skipItem;
          setState(() {
            status =
                "Zipping file $str .... done: ${data.toStringAsPrecision(4)}%";
          });
          return ZipFileOperation.includeItem;
        },
      );

      setState(() {
        status = " zipped files in ${newDirectory.path} + zipFile.zip";
        fileZipped = true;
      });
    } catch (e) {
      print(e);
    }
  }

  void testConnection() async {
    setState(() {
      status = "Testing Connection";
    });
    var dio = Dio();

    try {
      var response = await dio.post(
        'http://${ipAddress.text.trim()}:${portNumber.text.trim()}/ftp/test/',
      );
      setState(() {
        status = response.toString();
        if (response.toString().contains("Success")) connectionSuccess = true;
      });
    } catch (e) {
      if (e is DioError) {
        setState(() {
          e.message;
        });
      }
    }
  }

  String status = "";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: width,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width * 0.6,
                    child: TextFormField(
                      controller: ipAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Ip Address 192.168.xxx.xxx",
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.3,
                    child: TextFormField(
                      controller: portNumber,
                      decoration: InputDecoration(
                        hintText: "Enter port nUmber xxxxx",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              status,
            ),
            connectionSuccess
                ? Container()
                : Container(
                    width: width * 0.5,
                    height: 55,
                    color: Colors.blue,
                    child: MaterialButton(
                      child: Text("Test Connection"),
                      onPressed: testConnection,
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: !connectionSuccess
          ? null
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    String ip = ipAddress.text;
                    print(ip);
                    print(portNumber.text.length);
                    if (ip.contains(".") &&
                        ip.split(".").length == 4 &&
                        portNumber.text.length >= 4)
                      singleFilePicker();
                    else
                      showCustomDialog(
                        title: "Error",
                        description: "Enter ip and port first",
                        context: context,
                      );
                  },
                  tooltip: 'Pick File',
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    String ip = ipAddress.text;
                    if (ip.contains(".") &&
                        ip.split(".").length == 4 &&
                        fileZipped &&
                        portNumber.text.length >= 4)
                      uploadFunctionForSingleFile();
                    else if (!fileZipped)
                      showCustomDialog(
                        title: "Error",
                        description:
                            "File not zipped please select a folder first",
                        context: context,
                      );
                    else
                      showCustomDialog(
                        title: "Error",
                        description: "Enter ip and port first",
                        context: context,
                      );
                  },
                  tooltip: 'Send',
                  child: Icon(Icons.send),
                ),
              ],
            ),
    );
  }
}
