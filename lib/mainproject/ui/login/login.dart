import 'package:flutter/material.dart';
import 'package:flutter_projects/mainproject/model/user.dart';
import 'package:flutter_projects/mainproject/ui/dashboard/home/dashboard.dart';
import 'package:provider/provider.dart';

import '../../service/authprovider.dart';
import '../../service/authservice.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unamectrlr=TextEditingController();
  TextEditingController pwdctrlr=TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: unamectrlr,
              decoration: const InputDecoration(
                border:  OutlineInputBorder(),
                suffixIcon: Icon(Icons.person),
                hintText: 'Username',
                labelText: 'Username *',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value == null) ? 'please enter username' : null;
              },
            ),
            TextFormField(
              controller: pwdctrlr,
              decoration: const InputDecoration(
                border:  OutlineInputBorder(),
                suffixIcon: Icon(Icons.lock),
                hintText: 'Password',
                labelText: 'Password *',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value == null) ? 'please enter username' : null;
              },
            ),
            ElevatedButton(
              onPressed: () async {
                if(_formKey.currentState!.validate()) {
                  // final user = User(
                  //                     userName: 'afthab',
                  //                     password: '12345678',
                  //                     authType: 'FORMS',
                  //                     ipAddress: '',
                  //                   );
                  final user = User(
                    userName: '${unamectrlr.text.trim()}',
                    password: '${pwdctrlr.text.trim()}',
                    authType: 'FORMS',
                    ipAddress: '',
                  );

                  final authService = AuthService();
                  final loginResult = await authService.login(user);

                  if (loginResult!=null) {
                    authProvider.setAuthenticated(true);
                    authProvider.updateresp(loginResult);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  DashboardPage()),
                    );
                    // Navigate to the home screen or perform other actions on successful login
                  } else {
                    // Handle login failure (show an error message, etc.)
                  }
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}