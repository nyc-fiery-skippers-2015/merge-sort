module View

  def self.welcome
    puts 'Welcome to Flashycardz game!!!'
    puts 'Try to get all answers correct to win the game.'
    puts 'ready??'
  end

  def self.input
    gets.chomp
  end

  def self.display(output)
    puts output
  end

  def self.correct
    puts 'correct!'
  end

  def self.incorrect
    puts 'incorrect! guess again :)'
  end

  def self.deck_not_available
    puts 'That option is not valid setting to default deck.'
  end
  def self.choose
    puts 'please enter 1 for Ruby trivia or 2 for animal trivia'
  end
end
