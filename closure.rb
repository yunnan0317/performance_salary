def my_method
  x = "Goodbye"
  yield("cruel")
end

x = "Hello"
my_method { |y| puts "#{x}, #{y} world" }
