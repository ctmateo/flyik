import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meedu/state.dart';
import 'package:tyfon/app/views/global_controllers/session_controller.dart';
import 'package:tyfon/app/views/global_widgets/custom_input_field.dart';
import 'package:tyfon/app/views/register/controller/register_controller.dart';
import 'package:tyfon/app/views/register/controller/register_state.dart';
import 'package:tyfon/app/views/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:flutter_meedu/meedu.dart';

final registerProvider = StateProvider<RegisterController, RegisterState>(
  (_) => RegisterController(sessionProvider.read),
);

class RegisterPageName extends StatelessWidget {
  const RegisterPageName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return ProviderListener<RegisterController>(
      provider: registerProvider,
      builder: (_, controller) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color(0xFFffffff),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  color: Colors.transparent,
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.1),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: OutlinedButton(
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1)),
                              onPressed: () =>
                                  router.pushNamedAndRemoveUntil(Routes.LOGIN),
                            )),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Cuál es tu",
                            style: TextStyle(
                                fontFamily: 'Silka Bold',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "primer nombre",
                            style: TextStyle(
                                fontFamily: 'Silka Bold',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.08,
                        ),
                        CustomInputField(
                          hintText: 'Nombre',
                          onChanged: controller.onNameChanged,
                        ),
                        SizedBox(
                          height: height * 0.1,
                        ),
                        MaterialButton(
                            minWidth: 450,
                            height: 60,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () =>
                                router.pushNamed(Routes.REGISTERLASTNAME),
                            child: const Text(
                              'Siguiente',
                              style: TextStyle(
                                  fontFamily: 'Silka Semibold',
                                  fontSize: 15,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  )),
            ));
      },
    );
  }
}
