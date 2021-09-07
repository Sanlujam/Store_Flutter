import 'package:flutter/material.dart';
import 'package:store/widgets/SearchBar/SearchBar.dart';
import 'package:store/widgets/SearchBar/SearchProductDelegate.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (MediaQuery.of(context).size.width < 800)
                Image.network(
                    'https://http2.mlstatic.com/frontend-assets/ui-navigation/5.15.2/mercadolibre/logo__small.png')
              else
                Image.network(
                  'https://http2.mlstatic.com/frontend-assets/ui-navigation/5.15.2/mercadolibre/logo__large_plus.png',
                ),
              if (MediaQuery.of(context).size.width < 800)
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    showSearch(
                        context: context, delegate: SearchProductDelegate());
                  },
                ),
              Container(
                width: 620,
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchBar(),
                ),
              ),
              Image.network(
                'https://http2.mlstatic.com/D_NQ_877425-MLA47306668299_082021-OO.webp',
                scale: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
