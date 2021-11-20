
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ProductNutritionInformation extends StatelessWidget {
  const ProductNutritionInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ Row(
        children: [
          Text(
            'The nutritional value',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          const Text(
            '(per 100g)',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
        SizedBox(height: 10.0,),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Калории'),
                Text('53.00 кал.'),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Белки'),
                Text('3.00г'),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Жиры'),
                Text('3.00г'),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Углеводы'),
                Text('3.00г'),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 1,
            ),
          ],
        ),],
    );
  }
}
