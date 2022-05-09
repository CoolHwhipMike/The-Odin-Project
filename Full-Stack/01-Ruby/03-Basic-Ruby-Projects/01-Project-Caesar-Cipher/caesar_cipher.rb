puts "Enter your phrase to encode:"
user_string = gets.chomp.bytes
shifted_string = []

puts "Enter your shift value:"
user_shift = gets.chomp.to_i

user_string.each do |element|
    if (element > 64 && element < 91) || (element > 96 && element < 123)
        element += user_shift
        shifted_string.push(element.chr)
    else
        shifted_string.push(element.chr)
    end
end

p user_string
p shifted_string.join("")