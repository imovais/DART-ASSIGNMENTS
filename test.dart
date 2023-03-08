void main() {
  List users = [];

  //FUNCTION FOR USER SIGN UP

  signup(String username, String email, String password, [int? phoneNumber]) {
    var user = {
      'Username': username,
      'Email': email,
      'Password': password,
      'Phone Number': phoneNumber
    };
    users.add(user);
  }

  signup('Zuhaib Khan', 'zuhaib.khan1991@gmail.com', '123456');
  signup('Ovais Khan', 'ovais@gmail.com', '55555');
  signup('Ali', 'Ali@gmail.com', '88888', 03423147577);

  loginuser(String username, String password) {
    var result = '';
    for (var i = 0; i < users.length; i++) {
      if (username != users[i]['Username'] && password != users[i]['Password']) {
        result = 'Invalid';
      } else
        result = 'Sucessfull';
    }
    print(result);
  }

  loginuser('Ali', '88888');
}
