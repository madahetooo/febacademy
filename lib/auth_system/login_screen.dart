import 'package:febacademy/auth_system/registration_screen.dart';
import 'package:febacademy/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 180,
                  child: Image.asset(
                    "assets/dashlogo.png",
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.email),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    label: const Text("Email or Phone"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.password),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    label: const Text("Password"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () async {
                    final _googleSignIn = GoogleSignIn();
                    final googleAccount = await _googleSignIn.signIn();

                    final googleCredential  = await googleAccount?.authentication;
                    final authCredential = GoogleAuthProvider.credential(
                      idToken: googleCredential?.idToken,
                      accessToken: googleCredential?.accessToken
                    );
                    final firebaseUser = await FirebaseAuth.instance.signInWithCredential(authCredential);

                    print(firebaseUser.user?.email);
                    print(firebaseUser.user?.displayName);
                    print(firebaseUser.user?.uid);
                    print(firebaseUser.user?.emailVerified);
                    print(firebaseUser.user?.photoURL);
                    print(firebaseUser.user?.phoneNumber);
                    print(firebaseUser.user?.isAnonymous);




                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  color: Colors.red,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?!"),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      child: const Text(
                        "   Sign Up",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
