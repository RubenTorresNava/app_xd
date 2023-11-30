import 'package:flutter/material.dart';
import 'package:untitled/route/app_router.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menú Principal',
        ),
      ),
      body:  ListView.separated(
          itemBuilder: (context, index) =>
              ListTile(
                leading: Icon(AppRouter.menuOptions[index].icon),
                title: Text(AppRouter.menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(context, AppRouter.menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRouter.menuOptions.length
      ),
    );
  }
}
