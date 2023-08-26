import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Build and return search results based on the query.
    return Center(
      child: Text('Search Results for "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Build suggestions as the user types in the search bar.
    return Center(
      child: Text('Search Suggestions'),
    );
  }
}
﻿
