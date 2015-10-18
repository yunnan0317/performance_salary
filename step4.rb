def mem_result(obj, method)
  anon = class<<obj; self ;end
  anon.class_eval do
    mem ||= {}
    define_method(method) do |*args|
      if mem.has_key?(args)
        mem[args]
      else
        mem[args] = super(*args)
      end
    end
  end
end
