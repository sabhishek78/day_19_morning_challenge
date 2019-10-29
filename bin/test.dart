import 'main.dart';

import 'package:test/test.dart';

void main() {


  test('double Swap', (){

    expect(doubleSwap("aabbcc", "a","c"),"ccaaaa");

  });
  test('IPv4 Validation', (){

    expect(IPv4Validation("192.168.0.1"),false);

  });
  test('sort By Digt Length', (){

    expect(sortByDigitLength([125,25,7,2]),[125,2,7,25]);

  });
}