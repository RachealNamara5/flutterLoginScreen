// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           color: Color(0xFFEEEEEE),
//           child: Center(
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Left side content (form)
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Sign up',
//                             style: TextStyle(
//                               fontSize: 32,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: 30),
//                           _buildTextField(
//                             icon: Icons.person,
//                             hintText: 'Your Name',
//                             obscureText: false,
//                           ),
//                           _buildTextField(
//                             icon: Icons.email,
//                             hintText: 'Your Email',
//                             obscureText: false,
//                           ),
//                           _buildTextField(
//                             icon: Icons.lock,
//                             hintText: 'Password',
//                             obscureText: true,
//                           ),
//                           _buildTextField(
//                             icon: Icons.key,
//                             hintText: 'Repeat your password',
//                             obscureText: true,
//                           ),
//                           SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Checkbox(value: false, onChanged: (bool? value) {}),
//                               Text(
//                                 'I agree all statements in ',
//                                 style: TextStyle(fontSize: 14),
//                               ),
//                               Text(
//                                 'Terms of service',
//                                 style: TextStyle(
//                                   color: Colors.blue,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 20),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               padding: EdgeInsets.symmetric(
//                                   vertical: 15, horizontal: 30),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30),
//                               ),
//                             ),
//                             child: Text(
//                               'Register',
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(
//       {required IconData icon, required String hintText, required bool obscureText}) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 20.0),
//       child: TextField(
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           prefixIcon: Icon(icon),
//           hintText: hintText,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false; // Checkbox state management

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 241, 244, 245),
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left side content (form)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Row containing Sign up text and Twitter icon
                          Padding(
                            padding: const EdgeInsets.only(top: 60, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 40,
                                  color: Color(0xFF709085),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  "Early Bird",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30),
                          _buildTextField(
                            icon: Icons.person,
                            hintText: 'Your Name',
                            obscureText: false,
                          ),
                          _buildTextField(
                            icon: Icons.email,
                            hintText: 'Your Email',
                            obscureText: false,
                          ),
                          _buildTextField(
                            icon: Icons.lock,
                            hintText: 'Password',
                            obscureText: true,
                          ),
                          _buildTextField(
                            icon: Icons.key,
                            hintText: 'Repeat your password',
                            obscureText: true,
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              Text(
                                'I agree to all statements in ',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                'Terms of service',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              if (_isChecked) {
                                // Add registration logic here
                              } else {
                                // Handle if not agreed
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 30),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 9, 141, 99),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required IconData icon,
      required String hintText,
      required bool obscureText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
