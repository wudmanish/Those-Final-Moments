class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end


 class Holy < Scene 
  def enter()
    puts "You decide to become holy"
    puts "choose:"
    puts "Own Religion: 42"
    puts "Join a church: 80"
    print " >"
     action = $stdin.gets.chomp
     if action == "42"
      puts "It may be time for you to become holy."
      puts "Your parents never really pushed religion on you as a child,"
      puts "but in order to reassure your fear of death, you could choose to believe in an afterlife."
      puts "\n"
      puts "You decide to create your own religion." 
      puts  "After all, you know something or someone told you that you were going to die. "
      puts "You’re more qualified to make a religion than most people."
      puts "But how are you going to manage it? You don’t have the money?"
      puts "You ride out to time square."
      puts "You find a piece of cardboard and start attracting attention with your unusually"
      puts "deep vocal cords. Many people pull out their phones and film you. Sure you're making"
      puts "a fool of yourself, but you are spreading the word."
      puts "\n"
      puts "You decide to take advantage of the situation by putting down a tin can to collect cash in."
      puts "By the end of the day you’ve collected"
      puts "quite a following."
      puts "\n"
      puts "You pray to the elusive hooded figure, promising life after death."
      puts "You feel happy that you enlightened these people and made an impact."
      return 'Good_Ending'

     elsif action == "80"
      puts "You pray and ask for confession"
      puts "However, you've never gotten confirmation before"
      puts "The priest in the dconfession chair judges you"
      puts "You've committed an impressive amount of sins"
      puts "But now they're all cleared from your record."
      puts "Free at last"
      return 'Good_Ending'
    end
  end
end

class Study < Scene
  def enter()
    puts "You studied instead of using your last moments wisely."
    puts "Seriously!?"
    return 'Bad_Ending'
  end
end

class Good_Ending < Scene
  def enter()
    puts "You drive out of the city to view your final sunset"
    puts "You think of all that could’ve been,"
    puts "But you did make something of these final moments."
    puts "\n"
    puts "Yet…"
    puts "You still fear death"
    puts "The sunset seems extra spectacular tonight."
    puts "But the feeling of dread is too much to bear"
    puts "*Bzzt*"
    puts "It’s your sister. She’s sent you a text"
    puts "It’s a picture of a baby boy you didn’t even know she had"
    puts "\n"
    puts "This makes you so damn happy."
    puts "Life goes on"
    puts "People live and die"
    puts "Time to come to the same fate as the majority of human beings have already succumbed to"
    puts "THE END"
    exit(1)
  end
end
class Finished < Scene
  def enter()
    puts "You drive out of the city to view your final sunset"
    puts "You think of all that could’ve been,"
    puts "But instead you wasted these last final moments"
    puts "being as trivial and unimportant as you have always been"
    puts "THE END"
    exit(1)

  end
end
class Death < Scene
  def enter()
  puts "You rush over to your friends before they go to class."
    puts "You: Hey Wait up! I'm going to die!"
    puts "\n"
    puts "Friend 1: What kind of joke are you pulling of this time?"
    puts "You: this is not a joke. I'm literally going to die. I"
    puts "want to spend my final moments with you guys. "
    puts "Friend 1: We've got exams tomorrow. Quit pulling my leg. I'm"
    puts "not hanging out with you tomorrow."
    puts "\n"
    puts "Ouch "
    puts "Theres no way that they'll hang out with you"
    puts "considering the awful timing."
    puts "You're best friend doesn't even believe you"
    puts "But maybe, if you start a party?"
   puts "Choose:"
   puts "Party: 024"
   puts "No party: 314"
      print "> "
      
   action = $stdin.gets.chomp
   if action == "314"
     puts "No party"
     puts "Well, that was a waste of time."
     return 'Bad_Ending'
     
     elsif action == "024"
    puts "Time to go out with a bang"
    puts " \n"
    puts "You collect everything:"
    puts "Doritoes..."
    puts "red solo cups..."
    puts "Mega stuffed Oreos..."
    puts "You're all good to go."
    puts "\n"
    puts "You get out your loud speakers"
    puts "This is going to be intense"
    puts "\n"
    puts " 4 hours later..."
    puts "\n"
    puts "No one comes because of exams."
    puts "You're just the smartest person."
    return 'Bad_Ending'
  
end
end
end

class EscapePod < Scene

  def enter()
    puts "You decide to try the New york lottery."
    puts "You don't have too many options"
    good_pod = rand(1..1755)
    print "[choose number]> "
    guess = $stdin.gets.chomp.to_i

    if guess != good_pod
      puts "You buy a lottery ticket with high hopes" % guess
      puts "What... did you think you'd actually win?"
      puts "That's laughable"
      puts "Well, onto the bad ending"
      return 'Bad_Ending'
    else
      puts "No." % guess
      puts "Wait..No you actually won"
      puts "this is so ridiculous"
      puts "There's a 1 in 1755 chance"
      puts "Fine here's your own special ending"
      puts "You win GOOD JOB!"
    return 'Good_Ending'
    end
  end
end

class TheBridge < Scene

  def enter()
   puts "You dial up her number. You know your sister will take the phone call as a victory" 
   puts "for her. However, you’re going to die. Losing an argument will be a trivial victory" 
   puts "by tomorrow morning."
   puts "You call her up: *bzzt*"
   puts "*bzzt*"
   puts "No answer…"
   puts "You call again."
   puts "*bzzt* *click*"
   puts " Sister: Look who came crawling back."
   puts "You roll your eyes"
   puts "Choose: 'I'm sorry' : 13"
   puts "Waiting for your apology: 14"
   puts "Dominoes pizza, how can I help you?: 15"

    action = $stdin.gets.chomp

    if action == "13"
     puts "Didn’t hear you. Can you repeat that?"
	   puts "You: (muttered)  i’m sorry"
     puts "Sister: Louder!"
     puts "You: I’M SORRY"
     puts "Sister: Heard you the first time."
     puts "To be honest, I don’t even remember what the argument was about."
     puts "Probably something small. You still probably wronged me, "
     puts "so I’m glad we could make repentance. I forgive you."
   return 'Good_Ending'

    elsif action == "14"
     puts "She hangs up on you. Nice job."
   return 'Bad_Ending'
  
    elsif action == "15"
      puts "Her: I’d like a genuine apology. Extra suck up!"
      return 'the_bridge'
    
  end
end
end
class LaserWeaponArmory < Scene

  def enter()
   puts "You start dialing in the numbers."
   puts "With each press on your phone you feel more tense."
   puts " You hit the call button… here goes nothing"
   puts "???: Hello?"
	 puts "You freeze up after hearing your mother’s voice on the other end."
	 puts "Choose:"
   puts "Tell her you're going to die: 11"
   puts "Casually talk to her: 12"
    print "> "
    
    action = $stdin.gets.chomp
    
    if action == "11"
	  puts "You: Mom, I’m going to die"
    puts 	"Mother: What!? What’s happening? Are you being serious?"
    puts "You: Yes. Tomorrow you will never see me again. I don’t know what’s happening, but please trust me."
    puts "Mother: You sound serious. As far As I know my childs not insane..."
    puts "I'll believe you."
    puts "\n"
    puts "You've convinced your mother. Nice job!"
    return 'Good_Ending'

      elsif action == "12"
    puts "You have a normal conversation."
    puts "You never talk about your death."
    puts "Why worry her?"
    puts "You've accomplished nothing, but atleast you've comforted yourself"
    return 'Good_Ending'

    end
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You’re on the plain between life and death."
    puts "Everything is slipping away."
    puts "You don’t feel anything…,"
    puts "I light appears in front you. "
    puts "“What a tragedy. You have only but one day to live. Make the most of it”"
    puts "\n"
    puts "You wake up in a cold sweat."
    puts "Thank god it’s all a dream."
    puts "However, all is not right. A dark figure stands by your bed."
    puts "It vanishes."
    puts "It was not a dream. There is no denying it, you are going to die tonight."
    puts "\n"
    puts "What about all of you hopes and dreams? What have you been educating yourself for all your life?"
    puts "You were given a lot of hope..."
    puts "All for it to be ripped away, tearing you in the process…"
    puts "\n"
    puts "You’re still comprehending the severity of the situation."
    puts "You start to panic, but you attempt to calm yourselfwn. You attempt to collect your thoughts and accept the situation."
    puts "\n"
    puts "You start to think about what means most to you."
    puts "choose:"
    puts "Talk to those closest to you: 1"
    puts "Make an impact: 2"
    print "> "

    action = $stdin.gets.chomp

    if action == "1"
      puts "You decide that it's best to spend your final moments with your family."
      puts "Although you were very keen about completing you goals in life,"
      puts "one day is just not enough time."
      puts "You want to call your mother and father, however, you do not know how they will react to the news."
      puts "\n"
      puts "You haven’t talked to your sister for a year... what were you fighting about again? Anyway "
      puts "it seemed very important at the time. It may be a good idea to make peace with her. "
      puts "\n"
      puts "There’s no denying spending time with your friends would also be a viable "
      puts "option. You’ve seen them at their weakest, and you’ve been through a lot together"
      puts "past year. However, they have never been ones for emotional breakdowns. Maybe a "
      puts "party would be a better idea..."
      puts "choose:"
      puts "Call your parents: 4"
      puts "Call your sister: 5"
      puts "Talk to your friends: 6"
      print "> "
      
      action = $stdin.gets.chomp
    if action == "4"
    return 'fam'
    elsif action == "5"
    return 'the_bridge'
    elsif action == "6"
    return 'death'
    end
      
    elsif action == "2"
      puts "It doesn't matter what. It doesn't matter how. Ever since you were"
      puts "little, you've wanted to do something to impact the world."
      puts "\n"
      puts "Winning something could work as a fast and efficient way to impact the world"
      puts "before your inevitable demise. Although it's not the hard work = dream life you've been"
      puts "striving for, it's still an option to consider."
      puts "\n"
      puts "It may be time for you to become holy. You’re parents never really pushed religion on"
      puts "you as a child, but in order to lessen your fear of death, you could choose to believe in"
      puts "an afterlife."
      puts "\n"
      puts "Your exams are tomorrow, which sucks because you're going to die."
      puts "You've been studying all week for them instead of living your life."
      puts "That being said, you could continue to study for them."
      puts "Maybe you're becoming a little insane? I don't think it's normal to see dark figures infront"
      puts "of your bed."
      puts "choose:"
      puts "Win something: 8 "
      puts "Become holy: 9"
      puts "Study for your exams: 10"
       print "> "
       
       action = $stdin.gets.chomp
       
      
    if action == "8"
      return 'escape_pod'

      elsif action == "9"
      return 'Holy'
      
      elsif action =="10"
      return 'study'
    end
    end
end
end










class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'fam' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'Bad_Ending' => Finished.new(),
    'Good_Ending' => Good_Ending.new(),
    'study' => Study.new(),
    'Holy' => Holy.new()
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end
a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()
