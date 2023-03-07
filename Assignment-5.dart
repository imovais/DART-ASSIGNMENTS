/*
Q1:  Map<String, double> expenses = {
  'sun': 3000.0,
  'mon': 3000.0,
  'tue': 3234.0,
};
Check if "fri" exist in expanses; if exist change
 it's value to 5000.0 otherwise add 'fri' to expenses
  and set its value to 5000.0 then print expenses.
*/
void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
  } else
    expenses['fri'] = 5000.0;

  //print(expenses);

/*
Q2: Write a program in Dart that find the area of a circle using function.
*/

  areaofcircle(radius) {
    double pi = 3.14159;
    var area = pi * radius * radius;
    return area;
  }

  // print(areaofcircle(6));

/*
Q3: Write a program in a dart that implements the Pythagorean theorem using function
*/

  pythagoren_theorem(a, b) {
    var a_square = a * a;
    int b_square = b * b;
    var c_square = a_square + b_square;
    var c = c_square * 0.5 * 0.5;
    return c;
  }

  ;
//  print(pythagoren_theorem(5, 5));

/*
Q4: Write a program in Dart to reverse a String using function.
*/

  String name = 'Muhammad Ovais Khan';
  String reverse = "";

  for (var i = name.length - 1; i > -1; i--) {
    reverse = reverse + name[i];
  }
  // print(reverse);

/*
Q5: Write a program in Dart to signup user by using username, email & password
as required fields while  phoneNumber is optional using function, call this
function at least 3 times to create different users. Now create another
function named as loginUser and then try to login with correct & incorrect credentials
*/

  Map users = Map(); //Black Map

  //FUNCTION FOR USER SIGN UP
  signup(int ID, String username, String email, String password,
      [int? phoneNumber]) {
        
    users[ID] = {
      'Username': username,
      'Email': email,
      'Password': password,
      'Phone Number': phoneNumber
    };
    return users;
  }

  signup(1, 'Zuhaib Khan', 'zuhaib.khan1991@gmail.com', '123456');
  signup(2, 'Ovais Khan', 'ovais@gmail.com', '55555');
  signup(3, 'Ali', 'Ali@gmail.com', '88888', 03423147577);

  print(users);
}
