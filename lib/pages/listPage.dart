import 'package:eduardo_sir/pages/components/EduardoCard.dart';
import 'package:eduardo_sir/pages/components/EduardoForm.dart';
import 'package:eduardo_sir/pages/components/EduardoPage.dart';
import 'package:eduardo_sir/pages/model/musica.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController nomeMusicaController = TextEditingController();
  TextEditingController nomeArtistaController = TextEditingController();
  FocusNode nomeMusicaFocus = FocusNode();
  FocusNode nomeArtistaFocus = FocusNode();

  late List<Musica> listaMusica = [];

  adicionarMusica({required String nomeMusica, required String nomeArtista}) {
    setState(() {
        listaMusica.add(Musica(nomeMusica: nomeMusica, nomeArtista: nomeArtista));
    });
  }

  @override
  Widget build(BuildContext context) {
    return EduardoPage(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              EduardoForm(
                label: "Nome da música",
                onEditingComplete: () {
                  nomeArtistaFocus.nextFocus();
                },
                focusNode: nomeMusicaFocus,
                userInputController: nomeMusicaController,
              ),
              const SizedBox(height: 20),
              EduardoForm(
                label: "Artista",
                focusNode: nomeArtistaFocus,
                userInputController: nomeArtistaController,
              ),
              const SizedBox(height: 20),
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 30);
                  },
                  shrinkWrap: true,
                  itemCount: listaMusica.length,
                  itemBuilder: (context, index) {
                    var itemMusica = listaMusica[index];
                    return EduardoCard(
                        upperText: itemMusica.nomeMusica,
                        bottomText: itemMusica.nomeArtista);
                  }),
            ],
          ),
        ),
        buttomFunction: () {
          adicionarMusica(
              nomeMusica: nomeMusicaController.text.toString(),
              nomeArtista: nomeArtistaController.text.toString());
        });
  }
}
