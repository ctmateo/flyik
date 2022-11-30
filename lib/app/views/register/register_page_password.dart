import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meedu/state.dart';
import 'package:tyfon/app/views/global_controllers/session_controller.dart';
import 'package:tyfon/app/views/global_widgets/custom_input_field.dart';
import 'package:tyfon/app/views/register/controller/register_controller.dart';
import 'package:tyfon/app/views/register/controller/register_state.dart';
import 'package:tyfon/app/views/register/utils/send_register_form.dart';

import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:tyfon/app/views/routes/routes.dart';

final registerProvider = StateProvider<RegisterController, RegisterState>(
  (_) => RegisterController(sessionProvider.read),
);

class RegisterPagePassword extends StatelessWidget {
  const RegisterPagePassword({Key? key}) : super(key: key);

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
                        SizedBox(height: height * 0.05),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 34,
                            ),
                            Padding(padding: EdgeInsets.only(right: 260)),
                            Icon(
                              Icons.close,
                              size: 34,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Crea una",
                            style: TextStyle(
                                fontFamily: 'Silka Black',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "contraseña segura",
                            style: TextStyle(
                                fontFamily: 'Silka Black',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.08,
                        ),
                        CustomInputField(
                          onChanged: controller.onPasswordChanged,
                          hintText: 'Contraseña',
                          labelText: 'Contraseña',
                          passwordActive: true,
                          validator: (text) {
                            if (text == null) return null;
                            if (text.trim().length >= 8) {
                              return null;
                            }
                            return "Tu contraseña debe contener minimo 8 caracteres";
                          },
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Consumer(builder: (_, watch, __) {
                          watch(registerProvider.select((_) => _.password));
                          return CustomInputField(
                            onChanged: controller.onVerifyPasswordChanged,
                            hintText: 'Confirma tu contraseña',
                            labelText: 'Contraseña',
                            passwordActive: true,
                            validator: (text) {
                              if (text == null) return null;

                              if (controller.state.password != text) {
                                return "Tu contraseña no coincide";
                              }

                              if (text.trim().length >= 8) {
                                return null;
                              }
                            },
                          );
                        }),
                        SizedBox(
                          height: height * 0.4,
                        ),
                        MaterialButton(
                            minWidth: 450,
                            height: 60,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () => sendRegisterForm(context),
                            child: const Text(
                              'Finalizar',
                              style: TextStyle(
                                  fontFamily: 'Silka Semibold',
                                  fontSize: 14,
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
