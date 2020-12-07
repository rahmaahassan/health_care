import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetHandler;

  Result(this.result, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (result <= 2) {
      resultText = 'It might you be that bad but you should take precaution.'
          ' You may have GERD, Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal sphincter (LES),'
          ' the ring of muscle between the esophagus and stomach. So you can take following measures:'
          ' 1) Avoid fatty spicy food 2) Avoid lying down after eating 3) Maintain healthy weight 4) Exercise';
      print(result);
    } else if (result <= 4) {
      resultText =
          'It might you be that bad but you should take precaution.'
          ' You may have Allergy, An allergy is an immune system response to a foreign substance that\'s not typically harmful to your body. '
          'They can include certain foods, pollen or pet dander. So you can take following measures:'
          ' 1) Apply calamine 2) Cover area with bandage 3) Use ice to compress itching';
      print(result);
    } else if (result <= 6) {
      resultText =
          'It might you be that bad but you should take precaution.'
          ' You may have Diabetes, Diabetes is a disease that occurs when your blood glucose is too high,'
          ' also called blood sugar.'
          ' Blood glucose is your main source of energy and comes from the food you eat. So you can take following measures:'
          ' 1) Have balanced diet 2) Exercise 3) Consult doctor 4) Follow up'
          '';
    } else if (result <= 8) {
      resultText =
          'It might you be that bad but you should take precaution.'
          ' You may have Hypertension, Hypertension (HTN or HT), also known as high blood pressure (HBP),'
          ' is a long-term medical condition in which the blood pressure in the arteries is persistently elevated.'
          ' High blood pressure typically does not cause symptoms. So you can take following measures:'
          ' 1) Meditation 2) Salt baths 3) Reduce stress 4) Get proper sleep'
          '';
    } else if (result <= 10) {
      resultText =
          'It might you be that bad but you should take precaution.'
          ' You may have Common Cold, 	The common cold is a viral infection of your nose and throat (upper respiratory tract).'
              ' It\'s usually harmless, although it might not feel that way.'
              ' Many types of viruses can cause a common cold. So you can take following measures:'
          ' 1) Drink vitamin c rich drinks 2) Take vapour 3) Avoid cold food 4) Keep fever in check'
          '';
    } else if (result <= 12) {
      resultText =
          'It might bot be that bad but you should take precaution.'
          ' You may have Hypoglycemia,  Hypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal. Glucose is your body\'s main energy source.'
              ' Hypoglycemia is often related to diabetes treatment. So you can take following measures:'
          ' 1) Lie down on side 2) Check in pulse 3) Drink sugary drinks 4) Consult doctor'
          '';
      print(result);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(33)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 200,
            child: Card(
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Center(child: Text('The Result', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
                  SizedBox(height: 15,),
                  Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 13,),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlatButton(
              child: Text(
                'Start Over',
              ), //Text
              textColor: Theme.of(context).buttonColor,
              onPressed: resetHandler,
            ),
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}


