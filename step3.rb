y=Result.new
def y.total(*scores)
  @mem ||= {}
  if @mem.has_key?(socres)
    @mem[scores]
  else
    @mem[socres]=super
  end
end

