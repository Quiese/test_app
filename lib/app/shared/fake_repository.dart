class FakeRepository {
  List<FakeModel> getAll() {
    List<FakeModel> _list = List<FakeModel>();

    _list.add(FakeModel(id: 1, name: 'Name 1', createAt: DateTime.now()));
    _list.add(FakeModel(id: 2, name: 'Name 2', createAt: DateTime.now()));
    _list.add(FakeModel(id: 3, name: 'Name 3', createAt: DateTime.now()));
    _list.add(FakeModel(id: 4, name: 'Name 4', createAt: DateTime.now()));
    _list.add(FakeModel(id: 5, name: 'Name 5', createAt: DateTime.now()));

    return _list;
  }
}

class FakeModel {
  int id;
  String name;
  DateTime createAt;

  FakeModel({this.id, this.name, this.createAt});
}
