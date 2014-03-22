# Remember, the rational numbers are the set of numbers
# that can be expressed as a ratio two of integers, like
# 1/2, 10234/567, 0/1, -4/5, etc.
#
# We write them as X/Y where X is called the "numerator"
# and Y is called the "denominator."  This notation is
# 100% convention.  We could just as easily write them
# as (X,Y) or X:Y or X|Y.
#
# For this exercise it's important to think about a
# rational number as a pair of integers with special
# addition, subtraction, multiplication, etc. operations
# and their own notion of equality.
#
# For example, we say that two rational numbers a/b and c/d
# are "equal" if a*d equals b*c.  This "equals" is defined
# in terms of the word "equals" for the integers -- we're equivocating
# a bit by re-using the same word.



#NOTES
#doesn't handle least common multiples of n1 & n2 where one is not the lcm of the other
#figure how equalsmm

#doesn't handle negative numbers

class RationalNumber
  attr_reader :numerator, :denominator
  
  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end
  
  # Addition
  def +(rational)
    remainder = 0

    new_num = rational.numerator * remainder
    new_denom = rational.denominator * remainder

    if denominator > rational.denominator
      if denominator % rational.denominator == 0
        remainder = denominator / rational.denominator
        return RationalNumber.new(new_num + numerator, new_denom + denominator)
      else
        puts "can't find GCF" 
        #workaround, muliply each denominator by its counterpart
      end
    elsif denominator < rational.denominator
      if rational.denominator % denominator == 0
        remainder = rational.denominator / denominator
        return RationalNumber.new(new_num + numerator, new_denom + denominator)
      else
        puts "can't find GCF"
      end
    else #their equal
      return RationalNumber.new(numerator + rational.numerator, rational.denominator)
    end

  end
  
  # Subtraction
  def -(rational)
    remainder = 0
    
    new_num = rational.numerator * remainder
    new_denom = rational.denominator * remainder
    
    if denominator > rational.denominator
      if denominator % rational.denominator == 0
        remainder = denominator / rational.denominator
        return RationalNumber.new(new_num - numerator, new_denom - denominator)
      else
        puts "can't find GCF" 
        #workaround, muliply each denominator by its counterpart
      end
    elsif denominator < rational.denominator
      if rational.denominator % denominator == 0
        remainder = rational.denominator / denominator
        return RationalNumber.new(new_num - numerator, new_denom - denominator)
      else
        puts "can't find GCF"
      end
    else #their equal
      return RationalNumber.new(numerator - rational.numerator, rational.denominator)
    end

  end
  
  # Multiplication
  def *(rational)
    first = numerator * rational.numerator
    second = denominator * rational.denominator
    RationalNumber.new(first, second)
  end
  
  # Division
  def /(rational)
    first = numerator * rational.denominator
    second = denominator * rational.numerator
    RationalNumber.new(first, second)
  end
  
  # Exponentiation
  def **(integer)
    RationalNumber.new(numerator ** integer, denominator ** integer) 
  end
  
  # The reciprocal, with an example
  def reciprocal
    RationalNumber.new(self.denominator, self.numerator)
  end
  
  # For, e.g., 1/3 should return -1/3
  # That is, rat + rat.inverse == RationalNumber(0,1)
  def inverse
    RationalNumber.new(self.numerator * -1, self.denominator)
  end
  
  # Returns true if this rational is equal the the input
  # Remember that RationalNumber.new(1,2) == RationalNumber(2,4)
  def ==(rational)

    #reduce to lowest common multiple and compare
  end
  
  def to_s
    "(#{self.numerator}/#{self.denominator})"
  end
end

num1 = RationalNumber.new(1,8)
num2 = RationalNumber.new(2,8)
num3 = RationalNumber.new(5,10)
p num1 + num2
p num1 - num2
p num1 * num2
p num1 / num2
p num1.inverse
p num3 ** 2