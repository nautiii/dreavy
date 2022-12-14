import 'package:dreavy/providers/user_info_provider.dart';
import 'package:dreavy/ui/login/sign_in_page.dart';
import 'package:dreavy/ui/login/validators.dart';
import 'package:dreavy/ui/shared/dreavy_button.dart';
import 'package:dreavy/ui/shared/dreavy_formfield.dart';
import 'package:dreavy/ui/shared/glass_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key, required this.state}) : super(key: key);

  final GoRouterState state;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _pseudoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  void submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<UserInfoProvider>().addUser(
            _emailController.text,
            _pwdController.text,
            _pseudoController.text,
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              kIsWeb
                  ? 'lib/assets/background_desktop.jpg'
                  : 'lib/assets/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: GlassContainer(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * (kIsWeb ? 0.85 : 0.75),
          width: MediaQuery.of(context).size.width * (kIsWeb ? 0.3 : 0.8),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0, top: 32.0),
                  child: Text(
                    'Dreavy',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                DreavyFormField(
                  label: 'Pseudo',
                  icon: Icons.person,
                  controller: _pseudoController,
                  validator: Validators.validatePseudo,
                ),
                DreavyFormField(
                  label: 'Email',
                  icon: Icons.mail,
                  controller: _emailController,
                  validator: Validators.validateEmail,
                ),
                DreavyFormField(
                  label: 'Password',
                  icon: Icons.lock,
                  hide: true,
                  controller: _pwdController,
                  validator: Validators.validatePassword,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 16.0),
                  child: DreavyButton(
                    onPress: () => submit(context),
                    label: 'Sign Up',
                  ),
                ),
                const Expanded(child: SizedBox.square()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Already with us ? ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                SignInPage(state: state),
                          ),
                        ),
                        child: const Text(
                          ' Login now',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                            overflow: TextOverflow.visible,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
