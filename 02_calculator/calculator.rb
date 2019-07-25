def add(term1, term2)
	term1 + term2
end

def subtract(term1, term2)
	term1 - term2
end

def sum(terms)
	terms.reduce(0, :+)
end

def multiply(terms)
	terms.reduce(1, :*)
end

def power(term, exponent)
	term ** exponent
end

def factorial(term)
	(1..term).reduce(1, :*) 
end
