// array comprehensions
Array.apply(null, { length: 100 })
	.map(Number.call, Number)
	.filter(function(value){
		return value > 50
	})
    .filter(function(value) {
        return value % 7 === 3
    })

// JS 1.7
var numbers = [1, 2, 3, 21, 22, 30];
var evens = [i for (i of numbers) if (i % 2 === 0)];