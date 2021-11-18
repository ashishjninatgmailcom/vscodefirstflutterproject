import 'package:flutter/material.dart';
import 'package:vscodefirstflutterproject/bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key,
    required this.defname,
    required TextEditingController usernameContr,
  })  : _usernameContr = usernameContr,
        super(key: key);

  final String defname;
  final TextEditingController _usernameContr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Mybgimage(),
        SizedBox(
          height: 20,
        ),
        Text(
          defname,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _usernameContr,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter name",
                labelText: "Name"),
          ),
        ),
      ],
    );
  }
}
