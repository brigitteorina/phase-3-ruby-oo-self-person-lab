# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def happiness=(value)
      @happiness = value.clamp(0, 10)
    end
  
    def hygiene=(value)
      @hygiene = value.clamp(0, 10)
    end
  
    def clean?
      hygiene > 7
    end
  
    def happy?
      happiness > 7
    end
  
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{name}. How are you?"
    end
  
    def start_conversation(friend, topic)
      case topic
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end
  

  #
  person = Person.new("John")
puts person.name
# Output: John

puts person.bank_account
# Output: 25

person.bank_account = 100
puts person.bank_account
# Output: 100

puts person.happiness
# Output: 8

person.happiness = 12
puts person.happiness
# Output: 10

puts person.clean?
# Output: false

puts person.happy?
# Output: false

puts person.get_paid(500)
# Output: all about the benjamins

puts person.take_bath
# Output: ♪ Rub-a-dub just relaxing in the tub ♫

puts person.work_out
# Output: ♪ another one bites the dust ♫

friend = Person.new("Alice")
puts person.call_friend(friend)
# Output: Hi Alice! It's John. How are you?

puts person.start_conversation(friend, "politics")
# Output: blah blah partisan blah lobbyist
