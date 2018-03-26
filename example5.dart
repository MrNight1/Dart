//Example of how to convert non-functional programming to functional
String scream(int length) {
  return "A${'a' * length}h!";
}

main() {
  var values = [1, 2, 3, 5, 10, 50];
  //non-functional
  for (var length in values) {
    print(scream(length));
  }
  
  //Functional code
  values.map(scream).forEach(print);
  
  //Another example of functional programming
  values.skip(2).take(3).map(scream).forEach(print);
}