import 'package:flutter/material.dart';

void main() => runApp(const myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: myLoginPage(),
    );
  }
}

class myLoginPage extends StatefulWidget {
  const myLoginPage({super.key});
  @override
  State<myLoginPage> createState() => _myLoginPageState();
}

class _myLoginPageState extends State<myLoginPage> {
  final emailAddress = TextEditingController();
  final passWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: emailAddress,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Email Address",
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.all(5.0),
                      borderSide: BorderSide(color: Colors.blue),
                    )),
              ),
              TextField(
                controller: passWord,
                obscureText: false,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    labelText: "Password",
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    )),
              ),
              SizedBox(
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondPage()))
                  },
                  child: Text("Login"),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Welcome"),
    );
  }
}
