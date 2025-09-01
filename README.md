# IncubyteTDDAssessment String Calculator

This project is an implementation of String Calculator, a TDD exercise designed to practice incremeental problem solving refactoring and clean code practices.

The goal is to build a simple calculator with an add method that parses a string of numbers and returns their sum gradually extending functionality through test driven steps.

# Features Implemented
- Empty Input -> returns 0
- Single Number -> returns the number itself
- Two numbers -> returns their sum
- Multiple numbers -> supports any count of comma seperated numbers
- New line support -> numbers seperated by comma or \n
- Custom delimiter -> single character e.g. //;\n1;2 -> 3
- Negative numbers -> raise exception with all negatives listed
- ignore numbers greater than 1000
- support for multiple/multi character delimiters

# Examples

```
calc = StringCalaculator.new

calc.add("") # => 0
calc.add("1") # => 1
calc.add("1,2") # => 3
calc.add("1,2,3,4") # => 10
calc.add("1\n2,3") # => 6
calc.add("//;\n1;2;3) # => 6
calc.add("1,1001") # => 1
calc.add("//[**][<<<]\n1**2<<<3) # => 6

begin.add
    calc.add("2,-3,-4")
rescue => e
    puts e.message # => "Negatives not allowed: -3, -4"
end

```

# My Personal Experience
- I started with simplest possible case and gradually introduced more complexity this helped me think in terms of small steps rather than all at once.
- writing test before implementation gave me confidence that my changes were correct and prevented regressions.
- this exercise also taught me refactoring also.
- concepts like regex, error handling were also a good part of exercise.

