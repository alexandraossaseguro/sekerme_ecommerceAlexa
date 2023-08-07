import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unaslindas/app/presentation/widgets/miboton.dart';
import 'package:unaslindas/app/presentation/widgets/my_from_text_field.dart';

class LoginView extends StatelessWidget {

  static const String name = 'login_view';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //Logo
                SvgPicture.asset('assets/images/MyMarca.svg',
                  colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn
                  ),
                ),
                Text("Uñas Lindas",
                  style:TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  )

                ),
                const MyFromTextField(
                  labelText: 'Email',
                  hintText: 'Correo Eletronico',
                  TextInputType: TextInputType.emailAddress,
                  obscureText: true,
                  suffixIcon: false,


                ),
                const MyFromTextField(
                  labelText: 'contraseña',
                  hintText: 'Password',
                  TextInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  suffixIcon :false,
                ),
                Padding(
                    padding: const  EdgeInsets.symmetric( horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){},
                          child: Text('Olvidates tu contraseña',
                            style:TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                            )
                          )
                    ]),
                  ),
                   const SizedBox(
                     height: 20,
                   ),
                MYBoton(text: "login",
                    onPressed: (){}
                ),
                const SizedBox(
                  height: 20),
                const Divider(), //TextButton
              ],
            ),
          ),
        )
    ),
    );
  }
}
