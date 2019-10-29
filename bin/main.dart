import 'dart:io';
import 'dart:math';
// Challenge 1
// Write failing test cases for given 3 challenges

// Challenge 2
// Sort by Digit Length, then By Number Itself
// Write a function that sorts an array of integers by their digit length in
// descending order, then settles ties by sorting numbers with the same digit length in ascending order.

// Challenge 3
// IPv4 Validation
// Create a function that takes a string (IPv4 address in standard dot-decimal
// format) and returns true if the IP is valid or false if it's not.
// isValidIP("1.2.3.4") ➞ true
// isValidIP("1.2.3") ➞ false
// isValidIP("123.045.067.089") ➞ false

// Challenge 4
// Double Character Swap
// Write a function to replace all instances of character c1 with character c2 and vice versa.
// Examples
// doubleSwap( "aabbccc", "a", "b") ➞ "bbaaccc"
List<int> sortByDigitLength(List<int> list)
{
list.sort(comparator1);
//print(list);
list.sort(comparator2);
//print(list);
return list;
}
int comparator2(int a, int b){
  if(a.toString().length==b.toString().length){
    if(a<b) return -1;
    if(a>b) return 1;
  }else{
    return 0;
  }
}
int comparator1(int a, int b){
  if(a.toString().length<b.toString().length) return 1;
  if(a.toString().length==b.toString().length) return 0;
  if(a.toString().length>b.toString().length) return -1;
}



bool IPv4Validation(String s){
  List<String> subString=s.split('.');
  print(subString);
  if(subString.length!=4){
    return false;
  }

    for (int i = 0; i < 4; i++) {
      if (subString[i].startsWith('0')) {
        return false;
      }
    }


    for(int i=0;i<4;i++){
      if((int.parse(subString[i])<256) && (int.parse(subString[i])>0))
        {

          return true;
        }
    }

  return false;
}

String doubleSwap(String s, String char1, String char2){
  List<String> list=s.split("");
  for(int i=0;i<list.length;i++)
    {
      if(list[i]==char1){
        list[i]=char2;
      }
      else{
        if(list[i]==char2){
          list[i]=char1;
        }
      }
    }
  print(list);
  return list.join();
}
main() {
  print(sortByDigitLength([125,215,12,3,5]));
 print(IPv4Validation("192.168.5.1"));
  print(doubleSwap("aabbcc",'a','c'));

}
