def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  return sum
end

def multiply(*num)
  total = 1
  num.each do |number|
    total *= number
  end
  total
end

def factorial(num)
  factorial = 1
  (1..num).each do |integer|
    factorial *= integer
  end
  factorial
end
