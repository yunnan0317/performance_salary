class MyClass
  def method_one
    puts "self of method_one is #{self}"
    def method_two
      puts "self of method_two is #{self}"
      'Hello!'
    end
  end
end

obj = MyClass.new
obj.method_one
obj.method_two
