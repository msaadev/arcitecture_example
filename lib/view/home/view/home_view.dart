import 'package:arcitecture_example/core/components/cards/user_card.dart';
import 'package:arcitecture_example/view/home/model/user_model.dart';
import 'package:arcitecture_example/view/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final HomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = HomeViewModel();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder(
        future: _viewModel.getUsers,
        builder: (
          BuildContext _,
          AsyncSnapshot<BaseModel?> snapshot,
        ) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.data?.length,
              itemBuilder: (_, index) {
                var item = snapshot.data?.data?[index];

                return UserCard(item: item);
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Hata Tekrar deneyiniz'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
