import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  double bmi = 0.0;
  String bmiCategory = '';

  TextEditingController weightInput = TextEditingController();
  TextEditingController heightInput = TextEditingController();

  void calculateBMI() {
    double weight = double.parse(weightInput.text) ?? 0.0;
    double height = double.parse(heightInput.text) ?? 0.0;

    if (weight > 0 && height > 0) {
      setState(() {
        bmi = weight / ((height / 100) * (height / 100));
        if (bmi < 18.5) {
          setState(() {
            bmiCategory = 'Underweight';});
        } else if (bmi >= 18.5 && bmi <= 24.9) {
          setState(() {
            bmiCategory = 'Normal';});
        } else if (bmi >= 25 && bmi <= 29.9) {
          setState(() {
            bmiCategory = 'Overweight';});
        } else {
          setState(() {
            bmiCategory = 'Obesity';});
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextFormField(
              controller: weightInput,
              decoration: InputDecoration(
                hintText: 'Weight (kg)',
              ),
            ),
          ),
          Center(
            child: TextFormField(
              controller: heightInput,
              decoration: InputDecoration(
                hintText: 'Height (cm)',
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: GestureDetector(
              onTap: () {
                calculateBMI();
              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    "Calculate BMI",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
              bmi.toString()
          ),
          SizedBox(height: 10),
          Text(
              bmiCategory.toString()
          ),
        ],
      ),
    );
  }
}