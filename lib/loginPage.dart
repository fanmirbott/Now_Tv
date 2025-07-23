import 'package:dars10/loginPage2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _State();
}

class _State extends State<LoginPage> {
  bool visibil = false;
  final focusnode1 = FocusNode();
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  final controller2 = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    focusnode1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF2D2D2D),
      body: SafeArea(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.symmetric(horizontal: 27),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 127),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back,",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFEAEAEA),
                      ),
                    ),
                    Text(
                      "Please login to enjoy full feature",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFDDDDDD),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 44),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: controller,
                  style: TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username yoki Email Kiriting";
                    } else if (value.length < 3) {
                      return "3 Ta harfdan kop bolsin";
                    } else if(value.length > 16){
                      return "16 Ta harfdan kam bolsin";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Username or Email",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF8D8D8D),
                    ),
                    filled: true,
                    fillColor: Color(0xFF3F3F3F),
                    prefixIcon: Icon(Icons.person, color: Color(0xFF8D8D8D)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Color(0xFF3F3F3F)),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // Password input
                Container(
                  width: double.infinity,
                  height: 130,
                  child: Column(
                    spacing: 15,
                    children: [
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        focusNode: focusnode1,
                        controller: controller2,
                        style: TextStyle(color: Colors.white),
                        obscureText: visibil,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Username yoki Email Kiriting";
                          } else if (value.length < 3 ) {
                            return "parol 3ta sondan ko'p bolsin";
                          }else if (value.length > 16){
                            return "parol 16ta sondan kam bolsin";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF8D8D8D),
                          ),
                          filled: true,
                          fillColor: Color(0xFF3F3F3F),
                          prefixIcon: Icon(Icons.key, color: Color(0xFF8D8D8D)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibil = !visibil;
                              });
                            },
                            focusNode: focusnode1,
                            icon: Icon(
                              visibil ? Icons.visibility : Icons.visibility_off,
                              color: Color(0xFF8D8D8D),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Color(0xFF3F3F3F)),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 46),
                IconButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(controller.text)));
                    }
                  },
                  style: IconButton.styleFrom(
                    fixedSize: Size(380, 40),
                    backgroundColor: Color(0xFF00A3B7),
                  ),
                  icon: Text("Login"),
                ),
                SizedBox(height: 35),
                Center(
                  child: Text(
                    "Or login with",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFFEAEAEA),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black26,
                        fixedSize: Size(50, 50),
                      ),
                      icon: Image.asset("assets/loginPage/img.png"),
                    ),
                    SizedBox(width: 40),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black26,
                        fixedSize: Size(50, 50),
                      ),
                      icon: Image.asset("assets/loginPage/img_1.png"),
                    ),
                  ],
                ),
                SizedBox(height: 190),
                Divider(color: Color(0xFFEAEAEA)),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        "Not have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => LoginPage2(),));
                          setState(() {
                          });
                        },
                        style: TextButton.styleFrom(
                        ),
                        child: Text(
                          "Register now",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF00A3B7),
                          ),
                        ),
                      ),
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
