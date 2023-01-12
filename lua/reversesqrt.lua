local complex = require("complex")

-- Newton-Raphson method

-- This function takes a single argument, which is the number for which you want to find the square root
-- It returns the square root of that number as a complex number
function square_root(n)
  local x = n
  local y = 1
  local e = 0.000001 -- This is the desired accuracy of the result
  if n < 0 then
    -- If the input number is negative, we need to return a complex number
    -- We set the real part of the complex number to 0, and the imaginary part to the square root of the absolute value of the input number
    return complex.new(0, math.sqrt(-n))
  end
  while x - y > e do
    x = (x + y) / 2
    y = n / x
  end
  return x
end

-- Example usage:
print(square_root(25)) -- Output: 5
print(square_root(-25)) -- Output: 0 + 5i

Absolute running time: 0.15 sec, cpu time: 0.01 sec, memory peak: 5 Mb, absolute service time: 0,22 sec