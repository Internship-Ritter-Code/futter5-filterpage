import 'package:flutter/material.dart';
import 'package:flutter5_filterpage/page/Detail.dart';

class SearchListPage extends StatefulWidget {
  _SearchListPageState createState() => _SearchListPageState();
  const SearchListPage({Key key}) : super(key: key);
}

const List<Key> key = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog")
];

class _SearchListPageState extends State<SearchListPage> {
  String dName;

  var etSearch = new TextEditingController();
  bool isSearch = true;
  String query = "";

  //data List
  List<String> dataList;
  List<String> filterList;

  @override
  void initState() {
    super.initState();
    dataList = <String>[];
    dataList = [
      "Snake",
      "Python",
      "Elephant",
      "Giraffe",
      "Cats",
      "Dog",
    ];
    dataList.sort();

    etSearch.addListener(() {
      if (etSearch.text.isEmpty) {
        setState(() {
          isSearch = true;
          query = "";
        });
      } else {
        setState(() {
          isSearch = false;
          query = etSearch.text;
        });
        MaterialButton(
          onPressed: () {
            setState(() {
              var iName;
              dName = iName.text;
            });
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(nama: dName)));
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController iName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Page Search List'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            _createSearchView(),
            isSearch ? _createListView() : _performSearch()
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

  Widget _createSearchView() {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: TextField(
        controller: etSearch,
        decoration: InputDecoration(
            hintText: 'Search', hintStyle: new TextStyle(color: Colors.green)),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _createListView() {
    return Flexible(
      child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Text("${dataList[index]}"),
              ),
            );
          }),
    );
  }

  Widget _performSearch() {
    filterList = <String>[];
    for (int i = 0; i < dataList.length; i++) {
      var item = dataList[i];
      if (item.toLowerCase().contains(query.toLowerCase())) {
        filterList.add(item);
      }
    }
    return _createFilteredView();
  }

  Widget _createFilteredView() {
    return Flexible(
        child: ListView.builder(
      itemCount: filterList.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 5,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Text("${filterList[index]}"),
          ),
        );
      },
    ));
  }
}
