# PHASE 2
def convert_to_int(str)
  Integer(str) unless Integer(str).type(Integer)
  raise ArgumentError.new("not an integer")
end

def input
  p "enter a number:"
  begin
    user_input = gets.chomp
    convert_to_int(user_input)
  rescue ArgumentError
    p "-1"
    p "not an integer"
    # raise ArgumentError.new("POOP") unless convert_to_int(user_input).type(Integer)
    return nil 
    retry
  end
  p "thank you"
   
end
# input

# PHASE 3

FRUITS = ["apple", "banana", "orange"]
class Coffee < StandardError 
end

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise Coffee
  else 
    raise "WRONG FRUIT"
  end 
end

def feed_me_a_fruit
  begin
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue Coffee
    puts "Yum, give me fruit now :D"
  retry
  end

end  

feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


