import 'package:flutter/material.dart';
import 'package:money_search/data/MoneyController.dart';
import 'package:money_search/model/MoneyModel.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}
/// instancia do modelo para receber as informações
MoneyModel model = MoneyModel();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Busca de Moedas'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: RefreshIndicator(
            onRefresh: (() => refresh()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// metodo de contrução futura para receber dados
                FutureBuilder<MoneyModel?>(
                  ///future: local onde informções serão buscadas
                  future: MoneyController().getMoney(),
                  builder: (context, snapshot) {
                    /// validação de carregamento da conexão
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    /// validação de erro
                    if (snapshot.error == true) {
                      return SizedBox(
                        height: 300,
                        child: Text("Vazio"),
                      );
                    }
                    /// passando informações para o modelo criado
                    model = snapshot.data ?? model;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// acessando e exibindo as informações do modelo
                        Text(model.uSDBRL?.low ?? ""),
                        Text(model.uSDBRL?.high ?? ""),
                        ///tambem é possivel exibir as informções atravez do snapshot, porem somente dentro do FutureBuilder!
                        Text(snapshot.data?.eURBRL?.name ?? ""),
                        Text(snapshot.data?.eURBRL?.codein ?? ""),
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }

  Future<Null> refresh() async {
    setState(() {});
  }
}
