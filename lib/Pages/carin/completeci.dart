import 'package:flutter/material.dart';
import 'package:insuranceapp/Pages/HomePage.dart';

class CarInsurenceC extends StatefulWidget {
  const CarInsurenceC({super.key});

  @override
  State<CarInsurenceC> createState() => _CarInsurenceCState();
}

class _CarInsurenceCState extends State<CarInsurenceC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your Profile has been created",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Now you can proceed to buy insurences",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 134, 187, 255)),
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
