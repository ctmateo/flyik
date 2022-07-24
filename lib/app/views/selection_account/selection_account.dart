import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meedu/flutter_meedu.dart' as router;
import 'package:tyfon/app/views/routes/routes.dart';

class SelectionAccount extends StatelessWidget {
  const SelectionAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Selecciona una",
                  style: TextStyle(
                      fontFamily: 'Silka Bold',
                      fontSize: 30,
                      color: Colors.black87),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "cuenta",
                  style: TextStyle(
                      fontFamily: 'Silka Bold',
                      fontSize: 30,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                  style: TextStyle(
                      fontFamily: 'Silka Medium',
                      fontSize: 12,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cuenta empresa",
                  style: TextStyle(
                      fontFamily: 'Silka Semibold',
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  style: TextStyle(
                      fontFamily: 'Silka Medium',
                      fontSize: 12,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.00)),
                child: Ink.image(
                  image: const AssetImage('assets/img/stores.jpg'),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Cuenta usuario",
                  style: TextStyle(
                      fontFamily: 'Silka Semibold',
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                  style: TextStyle(
                      fontFamily: 'Silka Medium',
                      fontSize: 12,
                      color: Colors.black87),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.00)),
                child: Ink.image(
                  image: const AssetImage('assets/img/user.jpg'),
                  child: InkWell(
                    onTap: () {},
                  ),
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              MaterialButton(
                  minWidth: 450,
                  height: 60,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () => router.pushNamed(Routes.REGISTEREMAIL),
                  child: const Text(
                    'Siguiente',
                    style: TextStyle(
                        fontFamily: 'Silka Semibold',
                        fontSize: 15,
                        color: Colors.white),
                  )),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
