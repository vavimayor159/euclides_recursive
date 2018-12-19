require "euclides_recursive/version"

module EuclidesRecursive
  # Returns the Maximum Common Divisor of the two numbers
  def mcd(a, b)
    b.zero? ? a : mcd(b, a % b)
  end
end
