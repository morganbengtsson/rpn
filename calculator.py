def calculate(operator, n0, n1):
  return {'+' : n0 + n1, 
          '-' : n0 - n1, 
          '*' : n0 * n1, 
          '/' : n0 / n1}

def evaluate(expression):
  operators = ('+', '-', '*', '/')
  elements = expression.split()
  stack = []
  while elements:
    element = elements.pop()
    if element in operators:
      n0 = stack.pop()
      n1 = stack.pop()
      stack.append(calculate(element, n0, n1))

