function Arithmetics(){
	// Used for division
	var self = this;

	this.multiply = function(x, y){
		return x * y;
	};
	this.divide = function(x, y){
		return x / y;
	}
	this.addMultiplicationToNumber = function(){
		Number.prototype.multiply = function(multiply, x){
			return multiply(this, x);
		}
	}
	this.addDivisionToNumber = function(){
		Number.prototype.divide = function(x){
			return self.divide(this, x);
		}
	}
}

var a = new Arithmetics();
console.assert(10 === a.multiply(2, 5), '2 * 5 !== 10');
a.addMultiplicationToNumber();
var b = 2;
console.assert(12 === b.multiply(a.multiply, 6), '2 * 6 !== 12');
a.addDivisionToNumber();
console.assert(0.5 === b.divide(4), '2 / 4 !== 0.5');