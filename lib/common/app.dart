import 'package:bamtol_market/main.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();

}

class _AppState extends State<App> {
  int count = 0;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   count = prefs.getInt('counter') ?? 0;
  //   print(count);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            // child : Image.asset('assets/svg/icons/logo_simbol.png')
          child: Text(
            count.toString(),
            style: TextStyle(
              fontSize: 80,
              color: Colors.white
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(onPressed: () async{
       setState(
       (){
         count++;
      }
       ) ;
       await prefs.setInt('counter', count);
       print(count);
      }),
    );
  }
}