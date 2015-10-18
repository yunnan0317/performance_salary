def mem_result(klass, method)
  mem = {}


  Class.new(klass) do
    define_method(method) do |*args|
      if mem.has_key?(args)
        mem[args]
      else
        mem[args]=super(*args)
      end
    end
  end
end
