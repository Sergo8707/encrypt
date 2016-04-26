require 'digest'
puts "Введите слово или фразу для шифрования:"
word = gets.to_s

puts "Каким способом зашифровать :"
puts "1. MD5"
puts "2. SHA1"
encode = gets.to_i
if encode == 1
  puts "Вот что получилось:"
  puts Digest::MD5.hexdigest word
elsif encode == 2
  puts "Вот что получилось:"
  puts Digest::SHA1.hexdigest word
else
  puts "Вы не выбрали вариант шифровки"
end
