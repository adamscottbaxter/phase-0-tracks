var colors = ["blue", "red", "purple", "orange"];
var horse_name = ["Seabiscuit", "Ed", "American Pharoah", "Bob"];

colors.push("yellow");
horse_name.push("Tim");

var horses = {"John": "orange"};

   
  for ( var i = 0; i < horse_name.length; i++) {
    horses[horse_name[i]] = colors[i];
        }

   console.log(horses)

  

  /* CAR MAKER FUNCTION */

  function Car(model, year, color){
    this.model = model;
    this.year = year;
    this.color = color;

    this.honk = function() {console.log("HONK!!"); };
    console.log("CAR INITIALIZATION COMPLETE");
  }

  var carFirst = new Car("Mustang", 1976, "Blue")
  var carTwo = new Car("Porsche", 2016, "Red")
  var carThree = new Car("Prius", 2014, "White")
  console.log(carFirst)
  console.log(carTwo)
  console.log(carThree)
  carFirst.honk()

  // If you wanted to loop through the keys and values of an object, 
  // how would you do that? (There are a few ways to accomplish this, 
  // and some gotchas that can happen depending on your approach.)

  // In order to loop through the keys and values of an object I would use a 'for in' loop.
  // Example: 

  // object = { shape: "triangle", color: "green" }
  // for (var key in object) {
  //   console.log(key); // <-- prints the keys
  //   console.log(object[key]); //<-- prints the values
  // }  

  // Are there advantages to using constructor functions to create objects? Disadvantages? 

  // One advantage of using constructor functions is that they can be reused later in the 
  // program, saving work and file size. Also, instead of adding a method to each instance 
  // of an object it can be included in the prototype.

  // A disadvantage would be that if the object does not have behaviors or methods, but only
  // contains data, then using an object literal is a simpler approach.

