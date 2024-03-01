import 'package:calcolate_bmi/AppColors.dart';
import 'package:flutter/material.dart';

class resalt extends StatelessWidget {
  const resalt({super.key, required this.Resalt});
  final double Resalt;
// Severe Thinness	< 16
// Moderate Thinness	16 - 17
// Mild Thinness	17 - 18.5
// Normal	18.5 - 25
// Overweight	25 - 30
// Obese Class I	30 - 35
// Obese Class II	35 - 40
// Obese Class III	> 40
  String getClassification() {
    if (Resalt < 16) {
      return 'Severe Thinness';
    } else if (Resalt > 16 && Resalt < 17) {
      return 'Moderate Thinness';
    } else if (Resalt > 17 && Resalt < 18.5) {
      return 'Mild Thinness';
    } else if (Resalt > 18.5 && Resalt < 25) {
      return 'Normal';
    } else if (Resalt > 25 && Resalt < 30) {
      return 'Overweight';
    } else if (Resalt > 30 && Resalt < 35) {
      return 'Obese Class I';
    } else if (Resalt > 35 && Resalt < 40) {
      return 'Obese Class II';
    } else if (Resalt > 40) {
      return 'Obese Class III';
    } else {
      return'Not valid';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  'Your Result',
                  style: TextStyle(color: AppColors.white, fontSize: 30),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.container),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        getClassification(),
                        style: TextStyle(
                            color: AppColors.darkGreen,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          Resalt.toStringAsFixed(2),
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // SizedBox(height: 15,width: 10,),
                          Padding(
                            padding: const EdgeInsets.only(top: 70,left: 25),
                            child: Text(
                              'your body weight is ${getClassification()},\nGood jop!💪',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.pink),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.pink,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Recalculate',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
