import 'package:calcolate_bmi/AppColors.dart';
import 'package:calcolate_bmi/Resalt.dart';
import 'package:flutter/material.dart';

class Calcolator extends StatefulWidget {
  const Calcolator({super.key});

  @override
  State<Calcolator> createState() => _Calcolator();
}

int weight = 70;
int age = 20;
int height = 150;
bool isMale = true;
class _Calcolator extends State<Calcolator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: Text(
          'BMI Calcolator',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //male female
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color:
                                (isMale) ? AppColors.pink : AppColors.container,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: AppColors.white,
                              size: 75,
                            ),
                            Text(
                              'male',
                              style: TextStyle(
                                  color: AppColors.coloe_text, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: (!isMale)
                                ? AppColors.pink
                                : AppColors.background,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: AppColors.white,
                              size: 75,
                            ),
                            Text(
                              'female',
                              style: TextStyle(
                                  color: AppColors.coloe_text, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // hight
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.container,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style:
                          TextStyle(color: AppColors.coloe_text, fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' cm',
                          style: TextStyle(
                              color: AppColors.coloe_text, fontSize: 15),
                        ),
                      ],
                    ),
                    Slider(
                        thumbColor: AppColors.pink,
                        activeColor: AppColors.pink,
                        inactiveColor: AppColors.coloe_text,
                        value: height.toDouble(),
                        min: 150,
                        max: 210,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: TextStyle(
                                color: AppColors.coloe_text, fontSize: 22),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  color: AppColors.white,
                                  style: IconButton.styleFrom(
                                      backgroundColor: AppColors.coloe_text),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 30,
                                  )),
                              const SizedBox(
                                width: 7,
                              ),
                              IconButton(
                                  color: AppColors.white,
                                  style: IconButton.styleFrom(
                                      backgroundColor: AppColors.coloe_text),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.container,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'age',
                            style: TextStyle(
                                color: AppColors.coloe_text, fontSize: 22),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  color: AppColors.white,
                                  style: IconButton.styleFrom(
                                      backgroundColor: AppColors.coloe_text),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 30,
                                  )),
                              const SizedBox(
                                width: 7,
                              ),
                              IconButton(
                                  color: AppColors.white,
                                  style: IconButton.styleFrom(
                                      backgroundColor: AppColors.coloe_text),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  double bmi = weight / ((height / 100) * (height / 100));
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => resalt(Resalt: bmi),
                  ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pink,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Calculte',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
