class Student{
  String _id;
  String _name;

  Student(this._id, this._name);


  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Student{_id: $_id, _name: $_name}';
  }
}