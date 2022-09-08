import 'package:flutter/material.dart';
import 'package:work_management_web/src/constants/app_theme.dart';
import 'package:work_management_web/src/utils/info_system.dart';

class NewsLetter extends StatefulWidget {
  const NewsLetter({Key? key}) : super(key: key);

  @override
  State<NewsLetter> createState() => _NewsLetterState();
}

class _NewsLetterState extends State<NewsLetter> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bodySmall = Theme.of(context).textTheme.bodySmall;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1100) {
        return  Container(
          margin: const EdgeInsets.only(top: p50),
          child: Form(
            key: _formKey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 600,
                  child: Column(
                    children: [
                      text1Widget(),
                      const SizedBox(height: p20),
                      emailWidget(),
                      const SizedBox(height: p20),
                      ElevatedButton(
                          onPressed: () {
                            final form = _formKey.currentState!;
                            if (form.validate()) {
                              form.reset();
                            }
                          },
                          child: Text("S'inscrire",
                              style: bodySmall!.copyWith(color: Colors.white)))
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return Container(
          margin: const EdgeInsets.only(top: p50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                text1Widget(),
                const SizedBox(height: p20),
                emailWidget(),
                const SizedBox(height: p20),
                ElevatedButton(
                    onPressed: () {
                      final form = _formKey.currentState!;
                      if (form.validate()) {
                        form.reset();
                      }
                    },
                    child: Text("S'inscrire",
                        style: bodySmall!.copyWith(color: Colors.white)))
              ],
            ),
          ),
        );
      }
    });

    
  }

  Widget text1Widget() {
    return Text(
      "Inscrivez-vous à la newsletter ${InfoSystem().name()}",
      textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold));
  }

  Widget emailWidget() {
    return Container(
        margin: const EdgeInsets.only(bottom: p20),
        child: TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.email),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            labelText: 'Adresse mail',
          ),
          keyboardType: TextInputType.text,
          style: const TextStyle(),
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Ce champs est obligatoire';
            } else {
              return null;
            }
          },
        ));
  }
}
