puts 'Choose a name:'

class Pet
  attr_accessor :name, :mood, :starvation, :asleep, :angry, :wish_to_walk, :stamina

  def initialize(name)
    @name = name
    @mood = 10 # He is satisfied
    @food_in_stomach = 10 # If the food in stomach = 10 it means that he is completely fed.
    @asleep = 0 # The idex of wish to sleep
    @angry = 0 # The index of his anger. As higher it is as worse!
    @wish_to_walk = 10 #
    @stamina = 10 # Your pet's level of stamina.
    puts @name + ' has been created.'
  end

  def feed
    puts 'You give food to ' + @name + '.'
    @food_in_stomach += rand(5..10)
    @mood += rand(5..10)
    @asleep += rand(5..10)
    passage_of_time
  end

  def put_to_sleep
    @asleep = 10
    @stamina = 10
    puts 'You put ' + @name + 'to sleep.'
    passage_of_time
  end

  def to_play
    @stamina -= rand(5..10)
    @mood += rand(5..10)
    @angry -= rand(5..10)
    puts 'You play with ' + @name + ' and he is satisfied!'
    puts 'The pet is laughing loudly and smile very brigth.'
    passage_of_time
  end

  def to_walk
    @mood += rand(3..6)
    @stamina -= rand(1..3)
    @food_in_stomach -= rand(4..7)
    @asleep += rand(1..4)
    puts 'You have go for a walk with ' + @name + '. He is enjoying the process.'
    passage_of_time
  end

  def command_aport
    @stamina -= rand(3..6)
    @mood += rand(2..5)
    @food_in_stomach -= rand(2..4)
    @asleep += rand(2..4)
    puts 'You throw a wood stick and say: ' + @name + 'aport!'
    puts @name + ' returns subject to you.'
    passage_of_time
  end

  def voice
    @mood += rand(1..3)
    puts @name + ' make a roar.'
    passage_of_time
  end

  def sit_down
    @wish_to_walk += rand(1..3)
    @mood -= rand(1..2)
    @angry += rand(1..2)
    puts 'You order ' + @name + ' to sit down.'
    puts 'It does this action, but the Pet waits for some other commands.'
    puts 'Also he starts to dream about some games.'
    passage_of_time
  end

  def lay_down
    @asleep += rand(1..4)
    @wish_to_walk += rand(1..3)
    puts 'You say to ' + @name + 'lay down.'
    puts 'As a result he is going to get bored.'
    passage_of_time
  end

  def take_the_toy
    @mood += rand(1..4)
    @stamina -= rand(1..3)
    puts @name + ' looks more satisfied!'
    puts 'He takes it and starts running round like a true tearaway:)'
    passage_of_time
  end

  def hold_the_toy
    @mood += rand(2..4)
    @stamina -= rand(2..4)
    @angry += rand(1..4)
    puts @name + ' holds the toy strong. It`s not so easy for you to get it back.'
    puts 'But when you do it you need to throw it away or he will knock you down.'
    puts 'Of course you know that it`s time for apport;)'
    passage_of_time
  end

  def information
    puts    "Name: #{@name}"
    puts    "Mood: #{@mood}" # он доволен
    puts    "Food in stomach: #{@food_in_stomach}" # если показатель голода 10, то он сыт.
    puts    "Asleep: #{@asleep}" # Показатель сна
    puts    "Angry: #{@angry}" # он очень злой
    puts    "Wish to walk: #{@wish_to_walk}" # он хочет гулять
    puts    "Stamina: #{@stamina}" # запас сил
  end

  def help
    puts 'feed - покормить питомца.'
    puts 'put_to_sleep - положить его спать.'
    puts 'to_play - поиграть с питомцем.'
    puts 'to_walk - пойти погулять с питомцем.'
    puts 'command_aport - дать команду апорт.'
    puts 'voice - приказать животному подать голос.'
    puts 'sit_down - сказать питомцу сидеть.'
    puts 'lay_down - сказать питомцу лежать.'
    puts 'take_the_toy - сказать питомцу взять игрушку.'
    puts 'hold_the_toy - дать питомцу команду удерживать игрушку и попытаться поиграть с ним в кто кого)'
    puts 'information - эта команда позволяет нам увидеть текущее состояние питомца по всем изначальным параметрам.'
    puts 'check - отвечает за проверку и ограничения допустимых значений, а также за выход из программы при определённых условиях.'
  end

private

  def check
      puts 'Enter your name. please.'
    name = gets.chomp
    while name.length < 3
      p 'Enter the name which will be more than 3 symbols'
      name = gets.chomp
    end
  end

  def action_watcher
    case command
      when '1' then pet.feed
      when 'put_to_sleep' then pet.put_to_sleep
      when 'to_play' then pet.to_play
      when 'to_walk' then pet.to_walk
      when 'command_aport' then pet.command_aport
      when 'voice' then pet.voice
      when 'sit_down' then pet.sit_down
      when 'lay-down' then pet.lay_down
      when 'take_the_toy' then pet.take_the_toy
      when 'hold_the_toy' then pet.hold_the_toy
      when 'information' then pet.information
      when 'check' then pet.check
      when 'help' then pet.help
    end
  end

  def passage_of_time
    if @mood >= 10
      @mood = 10
      puts 'Your pet is in a very good mood:)'
    end

    if @mood <= 0
      @angry = 10
      puts 'Your pet is in a very bad mood and he becomes angry.'
    end

    if @food_in_stomach >= 10
      @food_in_stomach = 10
      @asleep = 10
      @mood += rand(2..5)
      puts 'Your pet is well and he wants to sleep;)'
    end

    if @food_in_stomach <= 0
      puts 'Your pet is starving and dies.'
      puts 'May the Force be with him.'
      exit
    end

    if @asleep >= 10
      @asleep = 10
      @stamina -= rand(1..10)
      @wish_to_walk = 0
      puts 'Your pet is to tired. It doesn`t want to go anywhere.'
      puts 'Put him to sleep.'
    end

    if @asleep <= 0
      @wish_to_walk += rand(4..7)
      puts 'Your pet is full of energy.'
      puts 'He really needs a walk and a wonderful play))'
    end

    if @angry >= 10
      @angry = 10
      @mood -= rand(8..10)
      puts 'The pet is furious. He barks loudly and he starts throwing on you.'
      exit
    end

    if @angry <= 0
      @mood += rand(1..3)
      puts 'The is peaceful and satisfied with life.)'
    end

    if @wish_to_walk >= 10
      @wish_to_walk = 10
      @mood += rand(1..4)
      puts 'He is running around the house, jumping and making.'
      puts 'Take him to a walk)'
    end

    if @wish_to_walk <= 0
      @mood -= rand(1..5)
      puts 'He doesn`t want to go for a walk. Your pet dissatisfied with the life('
    end

    if @stamina >= 10
      @stamina = 10
    end

    if @stamina <= 0
      @asleep += rand(7..10)
      @mood -= rand(7..9)
      @wish_to_walk -= rand(6..9)
      @food_in_stomach -= rand(5..7)
    end
  end

  name = gets.chomp

  pet = Pet.new(name)
  pet.help
  command = nil
  until command == 'exit'
    command = gets.chomp
  end

end
