import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_samle/application/search_bloc/search_bloc.dart';
import 'package:hive_samle/presentation/profile/profile.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();

  Widget expanded() {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Expanded(
          child: state is SerachList
              ? ListView.builder(
                  itemCount: state.searchItem.length,
                  itemBuilder: (context, index) {
                    File img = File(state.searchItem[index].image);
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: FileImage(img),
                        radius: 22,
                      ),
                      title: Text(state.searchItem[index].name),
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StudentProfile(
                                      passValue: state.searchItem[index],
                                      passId: index,
                                    )));
                      }),
                    );
                  },
                )
              : Center(
                  child: state is Initial
                      ? const Text('Search Students')
                      : const Text('No match found')),
        );
      },
    );
  }

  Widget searchTextField() {
    return TextFormField(
      autofocus: true,
      controller: _searchController,
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        prefixIcon: const Icon(CupertinoIcons.search),
        suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              if (_searchController.text.isNotEmpty) {
                _searchController.clear();
                context.read<SearchBloc>().add(const Initialevent());
              } else {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            }),
        filled: true,
        fillColor: const Color.fromRGBO(234, 236, 238, 2),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
        hintText: 'search',
      ),
      onChanged: (value) {
        context.read<SearchBloc>().add(SearchStudent(value));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: <Widget>[
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    CupertinoIcons.chevron_compact_down,
                    size: 35,
                  )),
              searchTextField(),
              expanded(),
            ],
          ),
        ),
      ),
    );
  }
}
