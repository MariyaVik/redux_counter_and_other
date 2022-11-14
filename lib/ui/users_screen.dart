import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/people/people_actions.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  // @override
  // void initState() async {
  //   await StoreProvider.of<AppState>(context).dispatch(PeopleLoadingAction());

  //   super.initState();
  // }

  @override
  void didChangeDependencies() async {
    if (StoreProvider.of<AppState>(context).state.isLoading) {
      await StoreProvider.of<AppState>(context).dispatch(PeopleLoadingAction());
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StoreConnector<AppState, Store<AppState>>(
        converter: (store) => store,
        builder: (context, store) {
          return store.state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: ((context, index) {
                    return ListTile(title: Text(store.state.users[index].name));
                  }),
                  itemCount: store.state.users.length,
                );
        },
      ),
    );
  }
}
