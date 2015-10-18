class MemoResult < Result
  def initialize
    @mem={}
  end
  def total(*scores)
    if @mem.has_key?(scores)
      @mem[scores]
    else
      @mem[scores]=super
    end
  end
end
