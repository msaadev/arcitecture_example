import 'package:arcitecture_example/core/components/image/cahce_image.dart';
import 'package:arcitecture_example/view/home/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:lib_msaadev/lib_msaadev.dart';

class UserCard extends StatelessWidget {
  final UserModel? item;

  const UserCard({Key? key, this.item}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.customHeight(6),
        padding: 10.paddingAll,
        margin: [10, 5].paddingSymmetric,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 5.customRadius,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.grey.shade300,
                offset: const Offset(4, 4),
                spreadRadius: 3)
          ],
        ),
        child: Row(
          children: [
            _buildImage(),
            Expanded(
                child: Padding(
              padding: 5.paddingAll,
              child: Column(
                children: [
                  _buildName(),
                  Expanded(child: _buildEmail())
                ],
              ),
            )),
          ],
        ));
    ;
  }

  ClipOval _buildImage() => ClipOval(child: CahceImage(link: item?.avatar ?? ''));

  Row _buildName() {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item?.firstName ?? ''),
                    5.wSized,
                    Text(item?.lastName ?? ''),
                  ],
                );
  }

  Center _buildEmail() => Center(child: Text(item?.email ?? ''));
}
