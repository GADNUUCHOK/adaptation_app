import 'package:adaptation_app/model/person.dart';
import 'package:adaptation_app/repo/person_repo.dart';
import 'package:adaptation_app/widgets/adaptive_widget.dart';
import 'package:adaptation_app/widgets/grid_widget.dart';
import 'package:adaptation_app/widgets/list_widget.dart';
import 'package:flutter/material.dart';

class PersonsPage extends StatefulWidget {
  const PersonsPage({Key? key}) : super(key: key);

  @override
  State<PersonsPage> createState() => _PersonsPageState();
}

class _PersonsPageState extends State<PersonsPage> {

  int? _currentProduct;
  late void Function(int) _onPersonTap;

  @override
  void initState() {
    super.initState();
    _onPersonTap = (index) {
      setState(() {
        _currentProduct = index;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Person>>(
        future: fetchPersonAssets('assets/persons.json'),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            var listPersons = snapshot.data;
            return AdaptiveWidget(
              list: ListWidget(
                listPerson: listPersons,
                  currentProduct: _currentProduct, onProductTap: _onPersonTap
              ),
              grid: GridWidget(
                listPerson: listPersons,
              ),
            );
          } else {
            return const SizedBox(
              height: 0,
            );
          }
        },
      ),
    );
  }
}
