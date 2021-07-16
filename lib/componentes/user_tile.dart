import 'package:flutter/material.dart';
import 'package:projetofinal/models/user.dart';
import 'package:projetofinal/routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.edit),
                color: Colors.purple,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                }),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Quer excluir usuário"),
                          content: Text("Tem certeza??"),
                          actions: <Widget>[
                            // ignore: deprecated_member_use
                            FlatButton(
                              child: Text("Não"),
                              onPressed: () => Navigator.of(context).pop(false),
                            ),
                            // ignore: deprecated_member_use
                            FlatButton(
                              child: Text("Sim"),
                              onPressed: () => Navigator.of(context).pop(true),
                            ),
                          ],
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
