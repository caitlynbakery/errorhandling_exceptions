class EmailAddress{
  EmailAddress(this.email){
    if(email.isEmpty){
      throw FormatException("email can't be empty");
    }
    else if(!email.contains('@')){
      throw FormatException("$email doesn't contain @ symbol");
    }
    
  }

  String email;

  @override 
  String toString() => email;
}

void main() {
  try {
    // print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    
    //print('$e doesn\'t contain @');
    print(e);
  }
  // Desired output:
  // me@example.com
  // FormatException: example.com doesn't contain the @ symbol
}