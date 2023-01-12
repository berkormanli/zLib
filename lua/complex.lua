-- Define the Complex class
local Complex = {}
Complex.__index = Complex

-- Constructor function for the Complex class
function Complex.new(real, imag)
  local self = setmetatable({}, Complex)
  self.real = real or 0
  self.imag = imag or 0
  return self
end

-- Returns the real part of the complex number
function Complex:real()
  return self.real
end

-- Returns the imaginary part of the complex number
function Complex:imag()
  return self.imag
end

-- Returns the magnitude of the complex number
function Complex:abs()
  return math.sqrt(self.real^2 + self.imag^2)
end

-- Returns the complex conjugate of the complex number
function Complex:conj()
  return Complex.new(self.real, -self.imag)
end

-- Overload the addition operator for Complex objects
function Complex.__add(c1, c2)
  return Complex.new(c1.real + c2.real, c1.imag + c2.imag)
end

-- Overload the subtraction operator for Complex objects
function Complex.__sub(c1, c2)
  return Complex.new(c1.real - c2.real, c1.imag - c2.imag)
end

-- Overload the multiplication operator for Complex objects
function Complex.__mul(c1, c2)
  return Complex.new(c1.real*c2.real - c1.imag*c2.imag, c1.real*c2.imag + c1.imag*c2.real)
end

-- Overload the division operator for Complex objects
function Complex.__div(c1, c2)
  local divisor = c2.real^2 + c2.imag^2
  return Complex.new((c1.real*c2.real + c1.imag*c2.imag) / divisor, (c1.imag*c2.real - c1.real*c2.imag) / divisor)
end

-- Overload the tostring function for Complex objects
function Complex.__tostring(c)
  if c.imag == 0 then
    return tostring(c.real)
  elseif c.real == 0 then
    return tostring(c.imag) .. "i"
  else
    return tostring(c.real) .. " + " .. tostring(c.imag) .. "i"
  end
end

-- Return the Complex class
return Complex
