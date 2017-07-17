#!/usr/bin/env python
import sys

def calculate(operator, n0, n1):
  calculations = {'+' : n0 + n1, 
          '-' : n0 - n1, 
          '*' : n0 * n1, 
          '/' : n0 / n1}
  return calculations[operator]


def evaluate(expression):
  operators = ('+', '-', '*', '/')
  elements = expression.split()
  stack = []
  while elements:
    element = elements.pop(0)
    if element in operators:
      n0 = stack.pop()
      n1 = stack.pop()
      stack.append(calculate(element, n0, n1))
    else:
      stack.append(float(element))
  return stack[0]

expression = sys.argv[1]
print("%.2f" % evaluate(expression))
