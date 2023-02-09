import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  int currentIndex = 0;
  String result = "";
  double height=0;
  double weight=0;

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        elevation: 10,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  radioButton("Male", Colors.blue, 0),
                  radioButton("Female", Colors.pink, 1),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Your height in cm: ",
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller: heightController,
                decoration: InputDecoration(
                  hintText: "Your height in cm:",
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Your weight in kg: ",
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                controller: weightController,
                decoration: InputDecoration(
                  hintText: "Your weight in kg:",
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                    height =  double.parse(heightController.value.text);
                    weight =  double.parse(weightController.value.text);
                    });
                    calculateBMI(height, weight);
                  },
                  color: Colors.blue,
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: const Text(
                  "Your BMI is : ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                child: Text(
                  "$result",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget radioButton(String gender, Color color, int index) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 80.0,
      child: MaterialButton(
        onPressed: () {
          changeIndex(index);
        },
        color: currentIndex == index ? color : Colors.grey[300],
        child: Text(
          gender,
          style: TextStyle(
              color: currentIndex == index ? Colors.white : color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      ),
    ));
  }

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void calculateBMI(double height, double weight) {
    double finalResult = weight / (height * height / 10000);
    String bmiResult = finalResult.toStringAsFixed(2);
    setState(() {
      result = bmiResult;
    });
  }
}
