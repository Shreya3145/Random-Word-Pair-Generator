import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget{
  const RandomWords({super.key});

  @override
  RandomWordsState createState() => RandomWordsState(); //creates state
}

class RandomWordsState extends State<RandomWords>{ //state class
  final _suggestions = <WordPair>[]; //list of word pairs
  final _savedPairs = <WordPair>{}; //it's a set, so it won't allow duplicate entries

  Widget _buildList() { //builds the list
    return ListView.builder(padding: const EdgeInsets.all(8),
    itemBuilder: (context, item) //itemBuilder callback function
    {
    if(item.isOdd) return Divider();
    final index = item ~/ 2;

    if(index >= _suggestions.length){
      _suggestions.addAll(generateWordPairs().take(20));
    }
    return _buildRow(_suggestions[index]);
    });}

  Widget _buildRow(WordPair pair){
    final alreadySaved = _savedPairs.contains(pair); //check if pair is already in saved pairs
    return ListTile(
      title: Text(pair.asPascalCase,
      style: TextStyle(fontSize: 18.0)),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if(alreadySaved){
            _savedPairs.remove(pair);
          } else {
            _savedPairs.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context){
          final tiles = _savedPairs.map(
            (WordPair pair){
              return ListTile(
                title: Text(pair.asPascalCase,
                style: TextStyle(fontSize: 16.0))
              );
            }
          );
          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles).toList();

            return Scaffold(
              appBar: AppBar(title: Text('Your favorites')),
              body: ListView(children: divided),
            );
        }
      )
    );
  }

 @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: Text('Random Pair Generator'),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
    ],
    ),
    body: _buildList());
 }
}
