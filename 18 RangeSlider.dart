import 'package:flutter/material.dart';

// import '13stack.dart';

class rangesl extends StatefulWidget {
  const rangesl({super.key});

  @override
  State<rangesl> createState() => _rangeslState();
}

class _rangeslState extends State<rangesl> {
  RangeValues values = RangeValues(0,100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.blueGrey.shade50,
          child: RangeSlider(activeColor: Colors.greenAccent,inactiveColor: Colors.green.shade100,
            values: values,
            labels: labels,
            divisions: 10,
            
            onChanged: ((newvalue) {
              values = newvalue;
              print('${newvalue.start},${newvalue.end}');
              setState(() {});
            }),
          ),
        ),
        
      ),
      
    );
  }
}
