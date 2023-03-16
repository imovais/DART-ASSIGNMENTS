/*=============================================================================
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

  print(expenses);

/*===============================================================================
Q2: Write a program in Dart that find the area of a circle using function.
*/

  areaofcircle(radius) {
    double pi = 3.14159;
    var area = pi * radius * radius;
    print('Radius $radius The Area of Circle is $area');
  }

  areaofcircle(5);

/*=================================================================================
Q3: Write a program in a dart that implements the Pythagorean theorem using function
*/

  pythagoren_theorem(a, b) {
    var a_square = a * a;
    int b_square = b * b;
    var c_square = a_square + b_square;
    var c = c_square * 0.5 * 0.5;

    print('a is $a & b is $b and using Pythagorean Theoram c is $c');
  }

  (pythagoren_theorem(5, 5));

/*================================================================================
Q4: Write a program in Dart to reverse a String using function.
*/
  reverse_string(String text) {
    String reverse = "";

    for (var i = text.length - 1; i > -1; i--) {
      reverse = reverse + text[i];
    }
    print(reverse);
  }

  reverse_string('Muhammad ovais Khan');

/*===================================================================================
Q5: Write a program in Dart to signup user by using username, email & password
as required fields while  phoneNumber is optional using function, call this
function at least 3 times to create different users. Now create another
function named as loginUser and then try to login with correct & incorrect credentials
*/

  List users = []; //Blank List

//>>FUNCTION FOR USER SIGN UP
  signup(String username, String email, String password, [int? phoneNumber]) {
    var user = {
      'Username': username,
      'Email': email,
      'Password': password,
      'Phone Number': phoneNumber
    };
    users.add(user);
  }

//>>>FUNCTION CALL 3 TIMES AS MENTIONED
  signup('zuhaibkhan', 'zuhaib.khan1991@gmail.com', 'abc1234');
  signup('ovaiskhan', 'ovais@gmail.com', 'pakistan1');
  signup('ali', 'Ali@gmail.com', 'ali', 03423147577);

//>>>FUNTION FOR LOGIN USER
  login_user(String username, String password) {
    String auth = '';
    for (var i in users) {
      if (i['Username'] == username && i['Password'] == password) {
        auth = '===========Login Successful=====================';
        break;
      } else
        auth = '============Invalid Username or Passowrd========';
    }
    print(auth);
  }

//>>>FUNCTION TEST
  login_user('ovaiskhan', 'pakistan1');

/*=====================================================================================
Q6:  Write a program in Dart to calculate power of a certain numbers using function only.
*/

  power_of_number(int Base, int exponent) {
    var result = 1;
    for (var i = 0; i < exponent; i++) {
      result *= Base;
    }
    return result;
  }

  print(power_of_number(2, 4));

/* =================================================================================
Q7: Write a function to calculate number of vowels and consonant in a String.
*/

  count_vowels(String text) {
    int count = 0;
    var vowels = 'aeiou';

    text = text.toLowerCase().replaceAll(' ', '');
    for (int i = 0; i < text.length; i++) {
      for (var j = 0; j < vowels.length; j++) {
        if (text[i] == vowels[j]) {
          count = count + 1;
        }
      }
    }
    var consonant = text.length - count;
    print('in ( $text ) No of Vowels are $count & consonant are $consonant');
  }

  count_vowels('Muhammad Ovais Khan');
} //Main
