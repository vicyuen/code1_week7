// Code_1_FA18
// Week 7
// Bryan Ma

// this is the "Cookie" class sketch we wrote in class.

// create 2 or more additional class definitions. 
// these classes aren't used for actually programming any visuals so they can 
//  be totally abstract and print text only just as the Cookie class does. 

// The first new class you make should represent some other kind of common object.
// give it fields and methods, as well as a custom constructor.
// The second new class you create should have its own object instance of the Cookie 
//  (or other) class. For example, maybe a Cookie Jar class would have an 
//  ArrayList of type Cookie. 

Pizza myPizza = new Pizza("pepperoni", "gigantic");
Taco myTaco = new Taco("spicy", "little", 4);

void setup() {myTaco.tacoBilling();}

//void draw() {myPizza.pizzaInfo();}

class Taco {
  String kind;
  String size;
  int amount;
  int price;
  
  Taco(String whatKind, String whatSize, int num) {
    println("bought a " + whatSize + " " + whatKind + " taco");
    kind = whatKind;
    size = whatSize;
    amount = num;
    price = amount * 2;
  }
  void tacoInfo(){
    println("This taco is a " + size + " " + kind + " taco!");
  }
  void tacoBilling(){
    println("Order is " + amount + " for " + price + " dollars");
  }
}

class Pizza {
  String kind;
  String size;
  
  Pizza(String whatKind, String whatSize) {
   println("made a " + whatSize + " " + whatKind + " pizza");
   kind = whatKind;
   size = whatSize;
  }
  void pizzaInfo(){
    println("This pizza is a " + size + " " + kind + " pizza!");
}
class Cookie {
  String kind;
  String size;
  
  Cookie(String whatKind, String whatSize) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    kind = whatKind;
    size = whatSize;
  }
  
  void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }
  
  void eat(String modifier) {
    println("You eat the cookie " + modifier);
  }
  
  String getSize() {
    return size;
  }
}
}
