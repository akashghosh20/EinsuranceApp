import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CallUs extends StatefulWidget {
  const CallUs({Key? key}) : super(key: key);

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  callNumber() async {
    const number = '999'; //set the number here
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 5,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/insurancelogo.png"),
          SizedBox(
            height: 50,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                onPressed: () {
                  {
                    callNumber();
                  }
                },
                child: Text(
                  "Call 999",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
