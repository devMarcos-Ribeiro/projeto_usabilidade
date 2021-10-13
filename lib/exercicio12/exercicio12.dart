import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => PrimeiraTela(),
          '/segunda': (_) => SegundaTela(),
          '/terceira': (_) => TerceiraTela(),
          '/quarta': (_) => QuartaTela(),
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/segunda');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terceira Tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '3',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/quarta');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class QuartaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quarta Tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
