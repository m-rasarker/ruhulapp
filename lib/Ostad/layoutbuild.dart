
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class layoutBuild extends StatelessWidget {
  const layoutBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Builder use'),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //need to learn more about theis
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth * 0.5,
                    height: constraints.maxHeight * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 5,color: Colors.black)
                    ),
                  );
                },
              )
          
          
            ],
          
          ),
        ),
      )

    );
  }
}
