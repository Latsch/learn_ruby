def add(numberOne, numberTwo)
	numberOne + numberTwo
end

def subtract(numberOne, numberTwo)
	numberOne - numberTwo
end

def sum(array)
	array.inject(0, :+)
end

def multiply(array)
	array.inject(:*)
end

def power(numberOne, numberTwo)
	numberOne**numberTwo
end

def factorial(number)
	return number if (0..1).include? number
        number * factorial(number-1) if number > 1
end       
