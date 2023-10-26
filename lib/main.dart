import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                color:  Colors.red[300],
                child: Stack(
                  children: [
                    Positioned(
                      top: 20, 
                      left: 20, 
                      child: Container(
                        width: 400, 
                        height: 100, 
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      bottom: 20, 
                      left: 20, 
                      child: Container(
                        height: 100, 
                        width: MediaQuery.of(context).size.width * 0.9,
                        color:  Colors.green[200],
                        
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 270,
                width: double.infinity,
                color:  Colors.red[300],

                child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -50,
                      child: Container(
                        width: 400, 
                        height: 100, 
                        color: Colors.grey,
                      ),
                    ),
                    Positioned(
                      bottom: 20, 
                      left: 20, 
                      child: Container(
                        height: 100, 
                        width: MediaQuery.of(context).size.width * 0.9,
                        color:  Colors.green[200],
                        
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
