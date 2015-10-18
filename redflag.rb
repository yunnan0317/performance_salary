# -*- coding: utf-8 -*-
def event(name)
  puts "ALERT: #{name}" if yield
end
#  Dir.glob(pattern)会以字符串数组形式返回pattern匹配的结果, 而后面的each是针对数组的方法, 最后的块是each的块, 对每一个数组的文件名load一次.
Dir.glob('*event3.rb').each { |file| load file }
