void main()
{
  //Variable declaration
  int a;

  /*if do'nt assign any values of the variable then taht  varible is contain some null values and
  dart compiler can not allow to used nullable variable in your program. Firstly assign a values
  to the variable then you can use.
  */

  //assign a value
  a=10;
  print(a);

  //inline decalaration
  String name ="Lalit";

  //BigInt is used for large integer
  BigInt longValue=BigInt.parse('1091822736677878222');
  print(longValue);

  double percentage=9.4;

  //num datatype are used to store both values int and double
  num b1=088;
  num b2=9.7;

  //boolean data type
  bool isLogin=false;
}