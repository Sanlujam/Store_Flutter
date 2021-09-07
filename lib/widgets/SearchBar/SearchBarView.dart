import 'package:flutter/material.dart';
import 'package:store/models/Option.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({Key? key}) : super(key: key);

  static const List<Option> continentOptions = [
    Option(label: 'Antarctica', value: 14000000),
    Option(label: 'Asia', value: 44579000),
    Option(label: 'Africa', value: 30370000),
    Option(label: 'Australia', value: 8600000),
    Option(label: 'Europe', value: 10180000),
    Option(label: 'North America', value: 24709000),
    Option(label: 'South America', value: 17840000),
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<Option>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        return continentOptions
            .where((Option option) => option.label
                .toLowerCase()
                .startsWith(textEditingValue.text.toLowerCase()))
            .toList();
      },
      fieldViewBuilder: (BuildContext context,
          TextEditingController fieldTextEditingController,
          FocusNode fieldFocusNode,
          VoidCallback onFieldSubmitted) {
        return Material(
          elevation: 1.0,
          child: TextField(
            controller: fieldTextEditingController,
            focusNode: fieldFocusNode,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintStyle: TextStyle(color: Colors.grey[400]),
              hintText: 'Buscar productos, marcas y más...',
              suffixIcon: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: () {},
              ),
            ),
          ),
        );
      },
      optionsViewBuilder: (BuildContext context,
          AutocompleteOnSelected<Option> onSelected, Iterable<Option> options) {
        return Align(
          alignment: Alignment.topLeft,
          child: Material(
            child: Container(
              width: 607,
              height: 300,
              color: Colors.white60,
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: options.length,
                itemBuilder: (BuildContext context, int index) {
                  final option = options.elementAt(index);

                  return GestureDetector(
                    onTap: () {
                      onSelected(option);
                    },
                    child: ListTile(
                      title: Text(option.label,
                          style: const TextStyle(color: Colors.black)),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
      onSelected: (Option option) {
        print('You just selected $option');
      },
    );
  }
}
