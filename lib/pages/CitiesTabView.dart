import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../utils/constants.dart';

class CitiesTabView extends StatefulWidget {
  @override
  _CitiesTabViewState createState() => _CitiesTabViewState();
}

class _CitiesTabViewState extends State<CitiesTabView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(const Radius.circular(8)),
            boxShadow: [
              BoxShadow(
                color: Constants.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 1)
              )
            ]
          ),
          child: GestureDetector(
            onTap: () => {
              Navigator.pushNamed(
                context, 
                Constants.routes['cityView'],
                arguments: '123'
              )
            },
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: const Radius.circular(8), topRight: const Radius.circular(8)),
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Kyiv_Montage_2016.png/270px-Kyiv_Montage_2016.png',
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          'Kyiv',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ),
                      Text(
                        'Pop. 2.884 million',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Constants.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
      ),
    );
  }
}
