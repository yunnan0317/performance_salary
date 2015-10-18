# -*- coding: utf-8 -*-
class Book
  def title
    # ...
  end
  def subtitle
    # ...
  end
  def lend_to(user)
    puts "Lending to #{user}"
  end

  # 定义一个类方法, 用来替换原有方法
  def self.deprecate(old_method, new_method)
    define_method(old_method) do |*args, &block|
      warn "Warning: #{old_method}() is deprecated. Use #{new_method}(). "
      send(new_method, *args, &block)
    end
  end

  # 在类定义中就用到了上面定义的deprecate方法, 所以deprecate就是类宏.
  deprecate :GetTitle, :title
  deprecate :LEND_TO_USER, :lend_to
  deprecate :title2, :subtitle
end
