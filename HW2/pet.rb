class Pet
    attr_accessor :name, :mood, :starvation, :asleep,  :angry, :wish_to_walk, :stamina

def initialize name
    @name = name
    @mood = 7 # он доволен
    @food_in_stomach = 7 # если показатель голода 0, то он сыт.
    @asleep = 0  # Показатель сна
    @angry = 0 # он очень злой
    @wish_to_walk = 10 # он хочет гулять
    @stamina = 10 # запас сил
    puts @name + 'has been created'
end

def feed
    puts 'You give food to ' + @name + '.'
    @food_in_stomach += rand(5..10)
    @mood += rand(5..10)
    @asleep += rand(5..10)
end

def put_to_sleep
    @asleep = 10
    @stamina = 10
    puts 'You put ' + @name + 'to sleep.'
end

def to_play 
    @stamina -= rand(5..10)
    @mood += rand(5..10)
    @angry -= rand(5..10)
    puts 'You play with ' + @name + ' and he is satisfied!'
    puts 'The pet is laughing loudly and smile very brigth.'
end

def to_walk
    @mood += rand(3..6)
    @stamina -= rand(1..3)
    @food_in_stomach -= rand(4-7)
    @asleep += rand(1..4)
    check
    puts 'You have go for a walk with ' + @name + '. He is enjoying the process.'
end

def command_aport
    @stamina -= rand(3..6)
    @mood += rand(2..5)
    @food_in_stomach -= rand(2..4)
    @asleep += rand(2..4)
    puts 'You throw a wood stick and say: ' + @name + 'aport!'
    puts @name + ' returns subject to you.'
end

def voice # Питомец, голос!
    @mood += rand(1..3)
    puts @name + ' make a roar.'

end

def sit_down
    @wish_to_walk += rand(1..3)
    @mood -= rand(1..2)
    @angry += rand(1..2)
    puts 'You order ' + @name + ' to sit down.'
    puts 'It does this action, but the Pet waits for some other commands.'
    puts 'Also he starts to dream about some games.'
end

def lay_down
    @asleep += rand(1..4)
    @wish_to_walk += rand(1..3)
    puts 'You say to ' + @name + 'lay down.'
    puts 'As a result he is going to get bored.'
end

def take_the_toy
    @mood += rand(1..4)
    @stamina -= rand(1..3)
    puts @name + ' looks more satisfied!'
    puts 'He takes it and starts running round like a true tearaway:)'
end

def hold_the_toy
    @mood += rand(2..4)
    @stamina -= rand(2..4)
    @angry += rand(1..4)
    puts @name + ' holds the toy strong. It`s not so easy for you to get it back.'
    puts 'But when you do it you need to throw it away or he will knock you down.'
    puts 'Of course you know that it`s time for apport;)'
end




def information
    puts    "Name: #{@name}"
    puts    "Mood: #{@mood}"  # он доволен
    puts    "Food in stomach: #{@food_in_stomach}" # если показатель голода 10, то он сыт.
    puts   "Asleep: #{@asleep}"  # Показатель сна
    puts    "Angry: #{@angry}"  # он очень злой
    puts    "Wish to walk: #{@wish_to_walk}" # он хочет гулять
    puts    "Stamina: #{@stamina}" # запас сил
end

def check
   if @mood >= 10 
    @mood = 10
   end

    if @mood <=0
        @angry = 10
    end

    if @asleep >= 10
        @asleep = 10
    end

    if @asleep <= 0
        @wish_to_walk = 10
    end

    



    if @food_in_stomach >=10
        @food_in_stomach = 10
    elsif @food_in_stomach <= 0 
        puts 'Your pet died.'
        abort("It can`t take any more of this, Captain!")
    else 
        @food_in_stomach
    end
    puts @food_in_stomach
end 


end