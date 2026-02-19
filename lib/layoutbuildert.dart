import 'package:flutter/material.dart';
 
class LayoutBuilderTest extends StatelessWidget {
  const LayoutBuilderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo LayoutBuilder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrainst) {
            if (constrainst.maxWidth < 400) {
              return Container(
                color: Colors.red,
                width: constrainst.maxWidth,
                height: 100,
                child: const Center(
                  child: Text('Diseño compacto'),
                ),
              );
            } else {
              return Container(
                color: Colors.green,
                width: constrainst.maxWidth,
                height: 200,
                child: const Center(
                  child: Text('Diseño amplio'),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}