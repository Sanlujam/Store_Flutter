import 'package:flutter/material.dart';
import 'package:store/widgets/SearchBar/SearchProductDelegate.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Text(MediaQuery.of(context).size.width.toString()),
      titleSpacing: 15,
      title: Autocomplete(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return _kOptions.where((String option) {
            return option.contains(textEditingValue.text.toLowerCase());
          });
        },
        onSelected: (String selection) {
          print('You just selected $selection');
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'Show Snackbar',
          onPressed: () {
            showSearch(context: context, delegate: SearchProductDelegate());
          },
        ),
        MediaQuery.of(context).size.width < 800
            ? IconButton(
                icon: const Icon(Icons.search),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  showSearch(
                      context: context, delegate: SearchProductDelegate());
                },
              )
            : Text('asd')
      ],
    );
  }
}
