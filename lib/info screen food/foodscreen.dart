
import 'package:flutter/material.dart';
import 'package:food/info%20screen%20food/info.dart';

class CompaniesList extends StatefulWidget {
  const CompaniesList() : super();

  @override
  _CompaniesListState createState() => _CompaniesListState();
}

class _CompaniesListState extends State<CompaniesList> {
  @override
  Widget build(BuildContext context) {
    //list of the cards data
    final Size size = MediaQuery.of(context).size;
    List companydata = [
      {
        "title": "onion",
        "imageUrl": "images/onion.png",
        "rating": "4.8",
        "location": "sousse,madina,   1.2km",
        "vacancy": "228"
      },
      {
        "title": "tomato",
        "imageUrl": "images/tomato.png",
        "rating": "4.3",
        "location": "sousse,hayriadh, 0.8km",
        "vacancy": "250"
      },
      {
        "title": "Onian",
        "imageUrl": "images/bagels.png",
        "rating": "4.1",
        "location": "sahloul,riadh,      7.2 km",
        "vacancy": "252" 
      },
      {
        "title": "Cucmber",
        "imageUrl": "images/fa9ous.png",
        "rating": "3.9",
        "location": "djerba,bouali,   55.2 km",
        "vacancy": "55"
      },
      {
        "title": "Betrrot",
        "imageUrl": "images/yagort.jpg",
        "rating": "3.8",
        "location": "tbolba,medina,   0.9 km",
        "vacancy": "587"
      },
      {
        "title": "carrot",
        "imageUrl": "images/carrot.png",
        "rating": "2.6",
        "location": "sousse,gazelii , 2.5 km",
        "vacancy": "41"
      },
      {
        "title": "Tesko",
        "imageUrl": "images/hokajben.png",
        "rating": "1.7",
        "location": "tunisi,medina 100.1 km",
        "vacancy": "524"
      },
    ];

    return Scaffold(
      //color of the entire screen
      backgroundColor: const Color(0XFFEFEBE9),

      //app's appBar
      appBar: AppBar(
        backgroundColor: const Color(0XFFEFEBE9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //navigate back to home
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 48,
          )
        ],  
      ),

      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 48),
            child: Column(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: companydata.map((e) {
                    return buildCard(
                      e['title'],
                      e['imageUrl'],
                      e['rating'],
                      e['location'],
                      e['vacancy'],
                    );
                  }).toList(),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddInformation()));
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget buildCard(title, imageurl, rating, location, vacancy) => Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 100,
          child: InkWell(
            onTap: () {},
            child: Card(
              elevation: 0.2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(imageurl, height: double.infinity, width: 80),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF1D1B1D)),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          const WidgetSpan(
                              child: Icon(
                            Icons.star_rate_outlined,
                            size: 20,
                            color: Colors.orangeAccent,
                          )),
                          TextSpan(
                            text: rating,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                                fontSize: 18),
                          ),
                        ])),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text: location,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ]),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.visibility,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                ),
                                TextSpan(
                                  text: vacancy,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
