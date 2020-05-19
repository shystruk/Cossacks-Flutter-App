import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../utils/constants.dart';
import '../mapping/Cossacks.dart';

class CossacksListView extends StatefulWidget {
  CossacksListView ({ Key key, this.cossacks }) : super(key: key);

  final Cossacks cossacks;

  @override
  _CossacksListViewState createState() => _CossacksListViewState();
}

class _CossacksListViewState extends State<CossacksListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ...widget.cossacks.list.map((cossack) => 
          GestureDetector(
            onTap: () => {
              Navigator.pushNamed(
                context, 
                Constants.routes['cossackView'],
                arguments: cossack['id']
              )
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.3, color: Constants.grey),
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,       
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: cossack['image'],
                        width: 90,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          cossack['name'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            cossack['title'],
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.3,
                            ),
                          )
                        ),
                        Text(
                          '(${cossack['born']} - ${cossack['died']})',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              ),
            ),
          )
        ).toList()
      ],
    );
  }
}
