def deaf_grandma
    distance = 0
    input = nil
    until input == "I love ya, Grandma, but I've got to go." || distance > 1
      input = gets.chomp
 
      if input == ""
        distance += 1
      elsif input == input.upcase
        distance = 0
        puts "NO, NOT SINCE 1983!"
      elsif input != input.upcase
        distance = 0
        puts "HUH?! SPEAK UP, SONNY!"
      end
      
    end
  end
 
  # Run our method
deaf_grandma
