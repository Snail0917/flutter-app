import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'LOGIN PAGE';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title), 
          backgroundColor: Color.fromRGBO(219, 15, 23, 1),),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

// bool _isChecked = true;
//handle remember me function
// void _handleRemeberme(bool value) {
// _isChecked = value;
// } 

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    bool _isChecked = true;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 135,
                  )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome To IBRACO!',
                  style: TextStyle(
                      color: Color.fromRGBO(219, 15, 23, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                )),       
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Please enter your account here!',
                  style: TextStyle(fontSize: 15),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  labelText: 'Email',
                  filled: true,
                  fillColor: Color.fromRGBO(245, 245, 245, 1),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color.fromRGBO(245, 245, 245, 1)), //<-- SEE HERE
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: 'Password',
                  filled: true,
                  fillColor: Color.fromRGBO(245, 245, 245, 1),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: Color.fromRGBO(245, 245, 245, 1)), //<-- SEE HERE
                  ),
                ),
              ),
            ),
           
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                        width: 15.0,
                        child: Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color.fromRGBO(219, 15, 23, 1) // Your color
                          ),
                          child: Checkbox(
                            activeColor: Color.fromRGBO(219, 15, 23, 1),
                            value:_isChecked,
                            onChanged: (value) {
                              
                            },
                          ),
                        )
                      ),
                      Text(
                        "Remember Me",
                        style: TextStyle(
                          color: Color.fromRGBO(219, 15, 23, 1)
                        )
                      )
                    ],
                  ),
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextButton(
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Color.fromRGBO(219, 15, 23, 1),),
                          ),
                          onPressed: () {
                            //forgot password screen
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            Container(
                height: 75,
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(
                      fontSize: 20),
                    ),
                  onPressed: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(219, 15, 23, 1),// This is what you need!
                  ),
                )
            ),
            Row(
              children: <Widget>[
                const Text("Don't Have an Account?"),
                TextButton(
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 17.5,
                      color: Color.fromRGBO(219, 15, 23, 1),),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}