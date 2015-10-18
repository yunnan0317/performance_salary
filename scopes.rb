v1 = 1

class MyClass
  v2 = 2
#  puts local_variables
  def my_mythod
    v3 = 3
    puts local_variables
  end
 # puts local_variables
end

obj = MyClass.new
#obj.my_mythod
puts local_variables
