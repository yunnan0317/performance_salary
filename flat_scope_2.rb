# -*- coding: utf-8 -*-
my_var = "Success"

MyClass = Class.new do
  # 在这里打印my_var
  puts "#{my_var} in the class definition!"

  define_method :my_method do
    puts "#{my_var} in the method definition!"
  end
end

MyClass.new.my_method
