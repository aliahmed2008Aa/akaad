import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback show;
<<<<<<< HEAD
  const LoginScreen(this.show, {super.key});
=======
  LoginScreen(this.show, {Key? key}) : super(key: key);
>>>>>>> 5c89b3f33ed9daa5deda29f467953264add0ec84

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final FocusNode email_F = FocusNode();
  final password = TextEditingController();
  final FocusNode password_F = FocusNode();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
      
        child: Column(
             
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            SizedBox(height: 100.h),
            Textfield(email, email_F, 'بريدك الالكتروني', Icons.email),
            SizedBox(height: 15.h),
            Textfield(password, password_F, 'كلمه السر', Icons.lock),
            SizedBox(height: 15.h),
            Forget(),
            SizedBox(height: 15.h),
            Login(),
            SizedBox(height: 15.h),
            HaveAccount(),
          ],
        ),
      ),
    );
  }

  Widget HaveAccount() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
          Text(
            "ليس لديك حساب؟",
            style: TextStyle(
              fontFamily: 'fontspring',
              fontSize: 14.sp,
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              "انشاء حساب",
              style: TextStyle(
              fontFamily: 'fontspring',
                fontSize: 15.sp,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Login() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: InkWell(
        onTap: () async {
          // Handle login logic
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 44.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            'تسجيل الدخول',
            style: TextStyle(
              fontFamily: 'fontspring',
              fontSize: 23.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget Forget() {
    return Padding(
      padding: EdgeInsets.only(left: 230.w),
      child: GestureDetector(
        onTap: () {
          // Handle forget password logic
        },
        child: Text(
          'نسيت كلمه السر؟',
          style: TextStyle(
              fontFamily: 'fontspring',
            fontSize: 13.sp,
            color: Colors.blue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget Textfield(TextEditingController controller, FocusNode focusNode,
      String hintText, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: TextField(
          style: TextStyle(fontSize: 18.sp, color: Colors.black),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus ? Colors.black : Colors.grey[600],
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                width: 2.w,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
