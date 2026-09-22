File.read("./mixin.rb").each_line do |x|
  if x.include?("@n")
    puts x
  end
end
