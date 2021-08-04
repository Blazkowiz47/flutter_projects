// @dart=2.8
import 'dart:math';
import 'dart:typed_data';
import 'package:base32/base32.dart';
import 'package:flutter/material.dart';
import 'package:hash/hash.dart' as hash_package;

class OTP {
  static num generateTOTPCode(BuildContext context, String secret, int time,
      {int length: 7}) {
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       title: Text("Time:"),
    //       content: Text(time.toString()),
    //     );
    //   },
    // );
    time = (((time ~/ 1000).round()) ~/ 30).floor();
    print("generateTOTPCode");

    //time = (time ~/30).floor();
    return _generateCode(secret, time, length);
  }

  static num generateHOTPCode(String secret, int counter, {int length: 7}) {
    return _generateCode(secret, counter, length);
  }

  static num _generateCode(String secret, int time, int length) {
    length = (length <= 8 && length > 0) ? length : 6;
    print("generating code");
    var secretList = base32.decode(secret);
    print(secretList);
    var timebytes = _int2bytes(time);
    print(timebytes);
    var hmac = hash_package.Hmac(hash_package.RIPEMD160(), secretList);
    print(hmac);
    print(timebytes.runtimeType);
    var intList = timebytes.map((e) => e as int).toList();
    print(intList.runtimeType);
    var hash = hmac.update(intList).digest();
    print(hash);
    int offset = hash[hash.length - 1] & 0xf;
    print(offset);
    int binary = ((hash[offset] & 0x7f) << 24) |
        ((hash[offset + 1] & 0xff) << 16) |
        ((hash[offset + 2] & 0xff) << 8) |
        (hash[offset + 3] & 0xff);
    print(binary);
    return (binary % pow(10, length));
  }

  static String randomSecret() {
    var rand = Random();
    Uint8List bytes = Uint8List(10);
    for (int i = 0; i < 10; i++) {
      bytes[i] = rand.nextInt(256);
    }

    return base32.encode(bytes);
  }

  static String _dec2hex(int s) {
    var st = s.round().toRadixString(16);
    return (st.length % 2 == 0) ? st : '0' + st;
  }

  static String _leftpad(String str, int len, String pad) {
    var padded = '';
    for (int i = str.length; i < len; i++) {
      padded = padded + pad;
    }
    return padded + str;
  }

  static List _hex2bytes(hex) {
    List bytes = [];
    for (int i = 0; i < hex.length; i += 2) {
      var hexBit = "0x${hex[i]}${hex[i + 1]}";
      int parsed = int.parse(hexBit);
      bytes[i ~/ 2] = parsed;
    }
    return bytes;
  }

  static List _int2bytes(int long) {
    var byteArray = [0, 0, 0, 0, 0, 0, 0, 0];
    for (var index = byteArray.length - 1; index >= 0; index--) {
      var byte = long & 0xff;
      byteArray[index] = byte;
      long = (long - byte) ~/ 256;
    }
    return byteArray;
  }

  static int _bytes2int(/*byte[]*/ byteArray) {
    var value = 0;
    for (var i = byteArray.length - 1; i >= 0; i--) {
      value = ((value * 256) + byteArray[i]).toInt();
    }
    return value;
  }
}
