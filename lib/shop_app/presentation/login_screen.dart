import 'package:febacademy/shop_app/presentation/products_categories_screen.dart';
import 'package:febacademy/shop_app/presentation/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/grocery_top_image.png',
              width: 300,
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/grocery_down_image.png',
                  height: 80,
                  fit: BoxFit.fitHeight,
                ),
              ]),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/carrot.png'),
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 18),
                const Text(
                  'Get your groceries\nwith nectar',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: IntlPhoneField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'AE',
                    onChanged: (phone) {
                      if (kDebugMode) {
                        print(phone.completeNumber);
                      }
                    },
                  ),
                ),
                const Text(
                  'Or Connect with social media',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 20, width: double.maxFinite),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProductsCategoriesScreen();
                        },
                      ),
                    );
                  },
                  icon: const Image(
                    image: AssetImage('assets/images/google_logo.png'),
                    height: 24,
                    width: 24,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(330, 40)),
                  label: const Text(
                    'Continue with Google',
                  ),
                ),
                const SizedBox(height: 20, width: double.maxFinite),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SplashScreenTwo();
                        },
                      ),
                    );
                  },
                  icon: const Image(
                    image: AssetImage('assets/images/facebook_logo.png'),
                    height: 24,
                    width: 24,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4267B2),
                      minimumSize: const Size(330, 40)),
                  label: const Text(
                    'Continue with Facebook',
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
