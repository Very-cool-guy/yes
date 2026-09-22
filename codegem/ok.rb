secret = rand(10) + 1
while true
  print "Take a guess! "
  guess = gets.chomp.to_i
  if guess < secret
    puts "too low!!!"
  elsif guess > secret
    puts "too high!"
  else
    puts "you win!"
    break
  end
end
