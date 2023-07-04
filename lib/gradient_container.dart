import 'package:flutter/material.dart';
import 'dice_roller.dart';
//import 'package:first_app/styled_text.dart';
//StyledText('salut')

//Alignment? startAlignment;    definit dinamic
//startAlignment e ori ceva de tip Alignment ori e null
//Alignment startAlignment = Alignment.topLeft; poti declara direct tipul
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startColor, this.endColor, {super.key});

  GradientContainer.purple({super.key})
      : startColor = Colors.deepPurple,
        endColor = Colors.indigo[200]!;

  final Color startColor;
  final Color endColor;

  @override //ca sa aratam ca da override la fct build
  //default din stateless widget
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});
//   final List<Color> colors;
//   // final Color startColor;
//   // final Color endColor;
//   @override //ca sa aratam ca da override la fct build
//   //default din stateless widget
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('helo'),
//       ),
//     );
//   }
// }
