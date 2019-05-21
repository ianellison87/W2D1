# PHASE 2
def convert_to_int(str)
  Integer(str)

  rescue ArgumentError
    nil

end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp

  raise puts "Try feeding a fruit" if maybe_fruit == "coffee"
  
  rescue
    retry
  
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
   
    if name.length <= 0 
      begin
      puts "Fill in name please"  
      new_name = gets.chomp
      until new_name.length > 0 
        raise "Name must be longer than 0 characters"
      end
    rescue 
        retry
    end
      @name = new_name
    else 
      @name = name
    end
      
    if yrs_known < 5
      begin
      puts "Can't be best friends if years known is less than 5"  
      new_yrs = gets.chomp.to_i
      until new_yrs >= 5
        raise puts "Need to know #{name} more than 5 years"
      end
    rescue
      retry
    end
      @yrs_known = new_yrs
    else 
      @yrs_known = yrs_known
    end

    if fav_pastime.length <= 0
      begin 
      puts "Fill in pastime please" 
      pastime = gets.chomp
      until pastime.length > 0
        raise puts "Everyone has a pastime"
      end
    rescue
      retry
    end
      @fav_pastime = pastime
    else
      @fav_pastime = fav_pastime
    end
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


