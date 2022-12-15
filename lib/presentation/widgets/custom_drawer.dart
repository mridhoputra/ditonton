import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/home_movie_page.dart';
import 'package:ditonton/presentation/pages/home_tv_page.dart';
import 'package:ditonton/presentation/pages/watchlist_movies_page.dart';
import 'package:ditonton/presentation/pages/watchlist_tvs_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  String currentHome = 'movies';

  void toggle(String clickedHome) {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();

    if (clickedHome == 'movies' && currentHome == 'tv series') {
      setState(() {
        currentHome = 'movies';
      });
    } else if (clickedHome == 'tv series' && currentHome == 'movies') {
      setState(() {
        currentHome = 'tv series';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  Widget _buildDrawer() {
    return Container(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/dicodingacademy/assets/main/flutter_expert_academy/dicoding-icon.png'),
            ),
            accountName: Text('Ditonton'),
            accountEmail: Text('ditonton@dicoding.com'),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Movies'),
            onTap: () {
              toggle('movies');
            },
          ),
          ListTile(
            leading: Icon(Icons.live_tv_rounded),
            title: Text('TV Series'),
            onTap: () {
              toggle('tv series');
            },
          ),
          ListTile(
            leading: Icon(Icons.save_alt),
            title: Text('Movies Watchlist'),
            onTap: () {
              Navigator.pushNamed(context, WatchlistMoviesPage.ROUTE_NAME);
            },
          ),
          ListTile(
            leading: Icon(Icons.save_alt),
            title: Text('TV Series Watchlist'),
            onTap: () {
              Navigator.pushNamed(context, WatchlistTvsPage.ROUTE_NAME);
            },
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, AboutPage.ROUTE_NAME);
            },
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = 255.0 * _animationController.value;
        double scale = 1 - (_animationController.value * 0.3);

        return Stack(
          children: [
            _buildDrawer(),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.centerLeft,
              child: currentHome == 'movies'
                  ? HomeMoviePage(drawerCallback: () {
                      toggle('movies');
                    })
                  : HomeTvPage(drawerCallback: () {
                      toggle('tv series');
                    }),
            ),
          ],
        );
      },
    );
  }
}
