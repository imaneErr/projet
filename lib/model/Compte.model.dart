class Compte{
 int _id;
   String _email;
  String _password;

  Compte(this._id,this._email,this._password);

 String get email => _email;

  set email(String value) {
    _email = value;
  }

 String get password => _password;

  set password(String value) {
    _password = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
