//
// Vector Sort Question
//
// The purpose of this file is to get reacquainted with the vector data
// structure, and common operations performed on it in C++.
//

#include <vector>
#include <iostream>
#include <algorithm> // std::sort

int main(void) {
  std::vector<int> integers;
  int integer;

  // Take in the first integer (number of integers total)
  std::cin >> integer;

  // read in all the integers
  while ( std::cin >> integer ) integers.push_back(integer);

  // sort the integers
  std::sort(integers.begin(), integers.end(), [](const int& a, const int& b) -> bool { return a < b; });

  // print out all the integers
  std::for_each(integers.begin(), integers.end(), [](const int& a) { std::cout << a << " "; });

  return 0;
}
