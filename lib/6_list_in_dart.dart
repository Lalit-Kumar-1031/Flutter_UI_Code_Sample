void main()
{
  //List is simialr to the array and values are access through index and list
  // contains the different type of data.

  var list1=[10,20,30,40,50];

  list1.add(70);

//print(list1);
  //empty list
  var list2=[];
  list2.add("Lalit");
  list2.add("Tarun");

  //copy one list to another list and whole list is insert in end of the destination list
 // list2.addAll(list1);

  //insert element in specified location
  //list2.insert(4,"Sushant");

  //insertAll is used to insert a list at speciifed index number.
  //list2.insertAll(1,list1);


  //update the list

  //print(list2);

  //list2[1]="Kapil";
  //print(list2);

  //replace list items
  var rollno=[10,20,23,49,04];

  print(rollno);

  //rollno.replaceRange(2, 5,[30,40,50]); //index 5 is not included



  //remove element from the list
  //rollno.removeLast();
  //rollno.removeAt(1);
  //rollno.removeRange(0, 2);//2 is not included
  //rollno.remove(04);

  //Important List operation

  print("Length:${rollno.length}");
  print("Reversed List:${rollno.reversed}");
  print("First:${rollno.first}");
  print("Last:${rollno.last}");
  print("Element at:${rollno.elementAt(2)}");
  print("isEmpty:${rollno.isEmpty}");
  print("is Not Empty:${rollno.isNotEmpty}");





}