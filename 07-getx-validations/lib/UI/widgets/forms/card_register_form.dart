import 'package:flutter/material.dart';
import 'package:getx_validations/UI/utils/validators_utils.dart';

class CardRegisterForm extends StatelessWidget {
  CardRegisterForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController repeatPasswordController = TextEditingController();
    FormValidator formValidator = FormValidator();
    return Form(
      key: _formKey,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              //POSIBLE ERROR
              //Es necesario utilizar los widget de Flutter como hijos del Form
              //Form => TextFormField , TextFormField ... etc => Validate
              //para hacer las validaciones => TextFormField
              Flexible(
                child: TextFormField(
                  obscureText: false,
                  controller: nameController,
                  validator: formValidator.isValidName,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu nombre"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextFormField(
                  obscureText: false,
                  controller: emailController,
                  validator: formValidator.isValidEmail,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu email"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  validator: formValidator.isValidPass,
                  decoration:
                      const InputDecoration(hintText: "Escribe tu contraseña"),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextFormField(
                  obscureText: true,
                  controller: repeatPasswordController,
                  validator: formValidator.isValidPass,
                  decoration: const InputDecoration(
                    hintText: "Repite tu contraseña",
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (contex) {
                          return AlertDialog(
                            title: Text("Este formulario es correcto"),
                          );
                        });
                    if (passwordController.text ==
                        repeatPasswordController.text) {
                      print("Ambas contraseñas son iguales");
                    } else {
                      print("Las contraseñas no son iguales");
                    }
                  } else {
                    print("vuelve a intentarlo");
                  }
                },
                child: Container(
                  height: 30,
                  width: 120,
                  color: Colors.pink,
                  child: const Center(
                    child: Text(
                      "REGISTRARSE",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
