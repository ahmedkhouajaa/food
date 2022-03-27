import 'package:flutter/material.dart';

//import 'map/googleMapScreen.dart';
import 'dart:async';

class AddInformation extends StatefulWidget {
  @override
  _AddInformationState createState() => _AddInformationState();
}

class _AddInformationState extends State<AddInformation> {
  DateTime selectedDate = DateTime.now();

   Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1800),
        lastDate: DateTime.now());

    if (picked != null && picked != selectedDate) {
      print(selectedDate);
      setState(() {
        selectedDate = picked;
   
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Informations',
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.ltr,
        child: ListView(
          children: [
            /// Name

           //Card(
           // elevation: 100,
            //  child: 
              Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              image: DecorationImage(
              image: AssetImage("images/camera.png"),))),
              //),
  /// last NAme

            ///Description
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(30)),
                       borderSide: BorderSide(color: Colors.yellow)
                    ),
                    hintText: 'Title...',
                    labelText: 'Title',
                    hintStyle: TextStyle(
                        //textAlign: TextAlign.right,
                        //textDirection: TextDirection.rtl,

                        )),
                maxLines: 1,
              ),
            ),

            /// Assistant Names
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  hintText: 'Description...',
                  labelText: 'Description ',
                ),
                maxLines: 3,
              ),
            ),
            /// Boat Name
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  hintText: 'Quantity (Per kg) ...',
                  labelText: 'Quantity (Per Kg) ',
                ),
                maxLines: 1,
              ),
            ),
            /// Saved Number
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  hintText: 'Add Your Possition ...',
                  labelText: 'Add Your Possition ...',
                ),
                maxLines: 1,
              ),
            ),
            /// Phone
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.left,
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  hintText: 'Phone Number ...',
                  labelText: 'Phone Num ',
                ),
                maxLines: 1,
              ),
            ),

            /// Adress
           

            /// Date

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('Add Date :'),
                ),
                SizedBox(width: 10),
                Container(
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(65, 27),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Select',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
              ],
            ),

            /// location

           // Row(
           //   children: [
            //    Container(
            //      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //    alignment: Alignment.centerLeft,
              //    child: Text('Add Position :'),
              //  ),
             //   SizedBox(width: 10),
              //  Container(
               //   child: ElevatedButton(
                //    style: TextButton.styleFrom(
                //      primary: Colors.white,
                 //     minimumSize: Size(65, 27),
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  //    shape: const RoundedRectangleBorder(
                  //  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //   ),
                 //   ),
               //     onPressed: () {
                      //enable when fix the MAP

                 //      Navigator.push(
                     //    context,
                     //    MaterialPageRoute(
                    //         builder: (context) => GoogleMapScreen()),
                    //   );
               //    },
                 //   child: Text(
                  ///    'Update',
                  //    style: TextStyle(
                  //      fontSize: 13,
                  //    ),
               //     ),
            //     ),
            //    ),
          //    ],
          //  ),

            /// Images

            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('Add Images :'),
                ),
                SizedBox(width: 10),
                //Add Images
                Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(54, 27),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    onPressed: () {
                      /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  );
                  */
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 13),

            ///Finish
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(

                style: TextButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),

                ),


                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Text(
                    'Finish',
                    style: TextStyle(
                      fontSize: 20,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}