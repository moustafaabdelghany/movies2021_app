import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';
import 'package:movies/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Movies>(
      child: WidgetsApp(
        title: 'Flutter Demo',
        color: Colors.grey[850],
        pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
          return MaterialPageRoute<T>(settings: settings, builder: builder);
        },
        home: HomePage(),
        localizationsDelegates: [
          DefaultMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
      ),
      create: (_) => Movies(<Movie>[
        Movie(
          'BLACK x WIDOW',
          'A film about Natasha Romanoff in her quests between the films Civil War and Infinity War.',
          [' Action', 'Adventure',' Sci-Fi'],
          '2h 13min',
          6.9,
          'assets/blackxwidow-poster.jpg',
          'assets/blackxwidow-logo.png',
          r'-FDuSQ~9E3Ipso%004M}NHM|xZ%0^ioe$%xZNHR+E3xY%0%0oeIpE3E3j]t6WBWB%0-nxsoefkWCIWM|V[oLofoextoyoJn%jZbH',
        ),
        Movie(
          'No Time To Die',
          'James Bond has left active service. His peace is short-lived when Felix Leiter,'
              ' an old friend from the CIA, turns up asking for help,'
              ' leading Bond onto the trail of a mysterious villain armed with dangerous new technology',
          [' Action', 'Adventure'],
          ' 2h 43min ',
          7.0,
          'assets/no-time-to-die-poster.jpg',
          'assets/no-time-to-die-logo.png',
          r'-OFE+$?sxuRoIqWG.7~8=|o#R-NIVur;xm-n%LozDlE4s*%0%Jox0#rxnTWAoafz^ONfEMVsRjs.WroexHR:V]V@j;n$W=oJjvs:',
        ),
        Movie(
          'VENOM 2',
          'A failed reporter is bonded to an alien entity, one of many sy'
              'mbiotes who have invaded Earth.'
              ' But the being takes a liking to Earth and decides to protect it..',
          ['Action','Adventure', 'Sci-fi'],
          '2h 5m',
          6.9,
          'assets/venom2-poster.jpg',
          'assets/venom2-logo.png',
          r'-8IWTj1805tk00t*=oNN0Kv{%g^i0J^Q1#-B~qR6JDIn=|%3R%0f00%0=?M{}tR4E.t4?GRPROxwHrInabbFyDTfXA$*ShXnogSh',
        ),
      ]),
      lazy: false,
    );
  }
}
