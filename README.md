# The Rational Numbers 
 
##Learning Competencies 

* Use Pseudocode effectively to model problem-solving
* Model a simple real-world system in Ruby code
* Identify and implement classes based on real world requirements

##Summary 

 We're going to model a system whose rules you've known for years and years: the arithmetic of the rational numbers.

As a quick refresher, a rational number is any number which can be expressed as the ratio of two integers.  [Read the Wikipedia page on the Rationals.](http://en.wikipedia.org/wiki/Rational_number)

We're going to learn how to implement a more abstract system in code, but gain something in the process.  By having our own "rational number class" we can perform exact arithmetic without the rounding errors that come from floating point arithmetic.

Think back to your calculator-using days when you'd type something like

```text
1/3 + 1/3 + 1/3
```

and get back

```text
1.00000000000001
```

We'll write code that will work like this:

```ruby
num1 = RationalNumber.new(2,3)
num2 = RationalNumber.new(1,3)

# true
num1 + num2 == RationalNumber.new(1,1)
```

##Releases

###Release 0 : Write down the rules of rational arithmetic

Read the Wikipedia page on the [arithmetic of the Rationals](http://en.wikipedia.org/wiki/Rational_number#Arithmetic).  We're going to implement the following operations:

1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Equality
6. Exponentiation
7. Inversion / negation
8. Reciprocation

Make sure you understand the rules.  Use examples on pen and paper and make sure you can, say, add two rational numbers by hand.

###Release 1 : Fill in the RationalNumber class

You've been provided with a skeleton `RationalNumber` class with methods to fill in.  Assume the input is always another `RationalNumber` instance.  Ruby has a built-in `Rational` class; don't use it!

The point of this challenge is to see how something like Ruby's `Rational` might be implemented on the inside, and also to see how object-oriented design can implement concrete and abstract systems alike.
 

<!-- ##Optimize Your Learning  -->

##Resources

* [arithmetic of the Rationals](http://en.wikipedia.org/wiki/Rational_number#Arithmetic)
