class Result
  def total(*scores)
    percentage_calculation(*scores)
  end

  private
  def percentage_calculation(*scores)
    puts "Calculation for #{scores.inspect}"
    scores.inject{|sum,n| sum + n} * (100.0/80.0)
  end
end
