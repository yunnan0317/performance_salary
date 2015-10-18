# -*- coding: utf-8 -*-
class MyClass
  @my_var = 1

  # 实际上此时的self是当前类, 也就是定义了一个类方法, 用来读取类实例变量.
  def self.read
    puts self
    puts @my_var
  end

  #下面两行代码定义了实例方法.
  def write; @my_var = 2; end
  def read; @my_var; end
end
