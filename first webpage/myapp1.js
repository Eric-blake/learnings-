var car = {
    make : "volva",
    color : "red",
    speed : 200 + " mph",
    engine : {
        size : "2.0",
        make : "bmw",
        fuel : "petrol",
        pistons : [ {make: "bmw"} , {make: "duke"} ]
    }
};

console.log( car.make);
console.log(car.speed);
console.log(car.engine.pistons[ 1]);
