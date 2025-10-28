import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GroupedButtonsExample(),
  ));
}

class GroupedButtonsExample extends StatefulWidget {
  @override
  State<GroupedButtonsExample> createState() => _GroupedButtonsExampleState();
}

class _GroupedButtonsExampleState extends State<GroupedButtonsExample> {
  // Checkbox values
  bool sunday = true;
  bool monday = false;
  bool tuesday = true;
  bool wednesday = false;
  bool thursday = true;
  bool friday = false;
  bool saturday = false;

  String selectedOption = "Option 1";

  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Grouped Buttons Example", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Basic CheckboxGroup",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Checkbox(
                    value: sunday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        sunday = value!;
                      });
                    },
                  ),
                  Text("Sunday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: monday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        monday = value!;
                      });
                    },
                  ),
                  Text("Monday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: tuesday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        tuesday = value!;
                      });
                    },
                  ),
                  Text("Tuesday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: wednesday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        wednesday = value!;
                      });
                    },
                  ),
                  Text("Wednesday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: thursday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        thursday = value!;
                      });
                    },
                  ),
                  Text("Thursday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: friday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        friday = value!;
                      });
                    },
                  ),
                  Text("Friday"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: saturday,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        saturday = value!;
                      });
                    },
                  ),
                  Text("Saturday"),
                ],
              ),

              SizedBox(height: 20),

              Text(
                "Basic RadioButtonGroup",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                children: [
                  Radio(
                    value: "Option 1",
                    groupValue: selectedOption,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text("Option 1"),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Option 2",
                    groupValue: selectedOption,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                  Text("Option 2"),
                ],
              ),

              SizedBox(height: 30),

              // Switch section
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Icon(Icons.lightbulb_outline, color: Colors.grey[700]),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Lights",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Switch(
                      value: lightOn,
                      activeColor: Colors.blue,
                      onChanged: (value) {
                        setState(() {
                          lightOn = value;
                        });
                      },
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
