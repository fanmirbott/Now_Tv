import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage2());
}

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _State();
}

class _State extends State<LoginPage2> {
  bool visibil = false;
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
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
                  children: const [
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
                Column(
                  spacing: 40,
                  children: [
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: controller,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username yoki Email Kiriting";
                        } else if (value.length < 3 ) {
                          return "3ta harfdan ko'p bolsin";
                        }else if (value.length > 16){
                          return "16ta harf kam bolsin";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
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
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: controller1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email Kiriting";
                        } else if (value.length < 3 ) {
                          return "3ta harfdan ko'p bolsin";
                        }else if (value.length > 16){
                          return "16ta harf kam bolsin";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFF8D8D8D),
                        ),
                        filled: true,
                        fillColor: Color(0xFF3F3F3F),
                        prefixIcon: Icon(Icons.email_outlined, color: Color(0xFF8D8D8D)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Color(0xFF3F3F3F)),
                        ),
                      ),
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: controller2,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Parol Kiriting";
                        } else if (value.length < 3 ) {
                          return "parol 3ta sondan ko'p bolsin";
                        }else if (value.length > 16){
                          return "parol 16ta sondan kam bolsin";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      obscureText: visibil,
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
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: controller3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Parolni qaytadan kiriting";
                        } else if (value.length < 3 ) {
                          return "parol 3ta sondan ko'p bolsin";
                        }else if (value.length > 16){
                          return "parol 16ta sondan kam bolsin";
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      obscureText: visibil,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
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
                  ],
                ),

                SizedBox(height: 15),
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
                  icon: Text("Register"),
                ),
                SizedBox(height: 35),
                Center(
                  child: Text(
                    "Or register with",
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
                SizedBox(height: 40),
                Divider(color: Color(0xFFEAEAEA)),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        "Have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Login",
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
