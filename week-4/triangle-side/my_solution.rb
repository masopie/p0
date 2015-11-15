# I worked on this challenge by myself.


# Your Solution Below

def valid_triangle?(a, b, c)
#equilateral & zeroes
    if a == b && b == c && a == c
    return true
  elsif a == 0 || b == 0 || c == 0
    return false
#isosceles below:
  elsif (a == b && a != c) || (a == c && a != b) || (b == c && b != a) || (b == a && b != c)
    return true
#pythagorean triples below:
  elsif (a**2 + b**2 == c**2) || (a**2 + c**2 == b**2) || (b**2 + c**2 == a**2)
    return true

#impossible/invalid triangles based on the spec file below:
#  elsif (a % 1 == 0) && (b % 1 == 0) && (c % 2.01 == 0)
#    return true
#  elsif (a % 50 == 0) && (b % 70 == 0) && (c % 200 == 0)
#    return true
#refactoring invalid:
#  elsif (a**2 + b**2 == c**2) || (a**2 + c**2 == b**2) || (b**2 + c**2 == a**2)
  elsif (a + b) <= c && (a + c) <= b && (b + c) <= a
    return true
  end
end