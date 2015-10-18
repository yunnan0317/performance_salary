# file: datawrapper.rb
class DataWrapper
  def self.wrap(file_name)
    data = File.new(file_name)
    header = data.gets.chomp
    data.close
    puts header
  end

end
