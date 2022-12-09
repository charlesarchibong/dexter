import 'package:dexter_health/src/presentation/pages/shift_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Almost there,',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.blue[900],
                ),
              ),
              Text(
                'Login to continue',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Image.asset('assets/images/nurses1.png', fit: BoxFit.cover, height: 300, width: double.infinity),
              const Gap(20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  hintText: 'Enter Email Address',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Required";
                  }
                  return null;
                },
              ),
              const Gap(30),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Required";
                  }
                  if (val.length < 6) {
                    return "Password must be atleast 6 characters long";
                  }
                  if (val.length > 20) {
                    return "Password must be less than 20 characters";
                  }
                  return null;
                },
              ),
              const Gap(50),
              SizedBox(
                height: 55,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShiftScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                  ),
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
