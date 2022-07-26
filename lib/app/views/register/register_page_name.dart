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
                            "Crea tu asombrosa",
                            style: TextStyle(
                                fontFamily: 'Silka Black',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "cuenta",
                            style: TextStyle(
                                fontFamily: 'Silka Black',
                                fontSize: 26,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(height: height * 0.05),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Sabemos que para ti y para nosotros es importante la privacidad de los datos, por ese motivo queremos que confíes de que tus datos estarán siempre seguros y seran utilizados solo para fines de seguridad.",
                            style: TextStyle(
                                fontFamily: 'Silka medium',
                                fontSize: 11,
                                color: Colors.black87),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        CustomInputField(
                          hintText: 'Ernesto',
                          labelText: "Nombres",
                          onChanged: controller.onNameChanged,
                        ),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        CustomInputField(
                          hintText: 'Perez',
                          labelText: "Apellidos",
                          onChanged: controller.onLastNameChanged,
                        ),
                        SizedBox(
                          height: height * 0.36,
                        ),
                        MaterialButton(
                            minWidth: 450,
                            height: 60,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            onPressed: () =>
                                router.pushNamed(Routes.REGISTERPASSWORD),
                            child: const Text(
                              'Confirmar',
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
