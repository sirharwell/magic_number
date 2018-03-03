require 'to_words'

def words
  @word=@number.to_words
  @guess=@word.length
  puts "#{@number} is #{@guess}"
  if @guess == 4
    puts "Four is the magic number!"
  else
    @number=@guess
    words
  end
end

print `clear`
puts "enter a number"
@number=gets.to_i
words
