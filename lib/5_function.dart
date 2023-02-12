void main()
{
   var riya=new Teacher();

   //calling display function
   riya.display();

   //calling show function
  riya.show("Riya");


}

class Teacher
{
  void display()
  {
    print("No Return type and no parameter function");
  }

  void show(String name) //no return type and parameterized function
  {
    print("My Name is :$name");
  }
}