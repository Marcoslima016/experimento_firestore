import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeController {
  //

  final CollectionReference collectionUsers = FirebaseFirestore.instance.collection('usersV1');

  ///[==================================== ADD CONTATO ====================================]
  ///[=====================================================================================]

  Future addContact() async {
    //

    var userId = "1";

    var tipoUsuario = "usuarioA";

    DocumentReference userDocument = collectionUsers.doc(userId);

    //Adicionar registro do usuario
    Map<String, dynamic> userData = <String, dynamic>{"name": "user1"};

    await userDocument.set(userData).whenComplete(() => print("item added to the database")).catchError((e) => print(e));

    if (tipoUsuario == "usuarioA") {
      //Adicionar sub colletion ao usuario
      Map<String, dynamic> collectionData = <String, dynamic>{"collectionId": "1"};

      await userDocument.collection('colletion1').doc().set(collectionData).whenComplete(() => print("item added to the database")).catchError((e) => print(e));
    }

    if (tipoUsuario == "usuarioB") {
      //Adicionar sub colletion ao usuario
      Map<String, dynamic> collectionData = <String, dynamic>{"collectionId": "1"};

      await userDocument.collection('colletion2').doc().set(collectionData).whenComplete(() => print("item added to the database")).catchError((e) => print(e));
    }
  }

  ///[==================================== LER CONTATO ====================================]
  ///[=====================================================================================]

  Future readContact() async {
    String userId = "1";

    DocumentReference userDocument = collectionUsers.doc(userId);

    var userData;

    await userDocument.get().then((value) {
      userData = value.data();
    });

    var p1;

    var valorBanco = await teste1();

    var p2;
  }

  Future teste1() async {
    var point;
  }

  // Future readContact() async {
  //   String userId = "1";

  //   CollectionReference notesItemCollection = collectionUsers.doc(userId).collection('dados');

  //   var dados = notesItemCollection.snapshots();

  //   dados.forEach(
  //     (document) {
  //       var teste = document;
  //       var point;
  //     },
  //   );

  //   return notesItemCollection.snapshots();
  // }
}

class Usuario {
  String nome;
  int idade;
}
