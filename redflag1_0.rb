# -*- coding: utf-8 -*-
# 重写event方法, 不直接输出结果, 而是先将数据全部放入container中
def event(name, &block)
  @events[name] = block
end

# setup方法于event方法一样.
def setup(name, &block)
  @setups << block
end

Dir.glob('test_event.3.rb').each do |file|
  # 读取每个文件前, 先初始化setups和events
  @setups = []
  @events = {}
  # 读取文件, 文件中包含调用event和setup方法的语句, 为events和setups添加元素.
  load file

  # 对于每一个event, 都会先遍历setups, 然后调用本身.
  @events.each_pair do |name, event|

    # 对象env实际提供了一个清洁室, setup和event中的的实例变量实际上是env的实例变量.
    env = Object.new
    @setups.each do |setup|
      # 使用instance_eval创造一个扁平化作用域, 保证所有的setups和events之间可以共享局部变量.
      env.instance_eval &setup
    end
    puts "ALERT: #{name}" if env.instance_eval &event
  end
end
