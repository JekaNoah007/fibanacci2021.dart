void main() {
  //print(fibonacci(8));

  String output = "";
  for (int i = 1; i <= 16; ++i) {
    output += fibonacci(i).toString() + ", ";
  }
  print(output + "...");
}

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci(n - 1);

// fibonacci(int n) {
//   if (n == 0) {
//     return 0;
//   } else if (n == 1) {
//     return 1;
//   } else {
//     return fibonacci(n - 2) + fibonacci(n - 1);
//   }

//////////////////////////////////////////////////////////////

  // if (n == 1 || n == 2) {
  //   return 1;
  // }
  // return fibonacci(n - 1) + fibonacci(n - 2);

//////////////////////////////////////////////////////////////

//  fibo($i) {
//  if ($i == 0 ) return 0;
//  if ($i == 1 || $i == 2) {
//   return 1;
//  } else {
//   return fibo($i - 1) + fibo($i -2);
//  }
// }
//}
