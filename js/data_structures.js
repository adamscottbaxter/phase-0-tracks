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
