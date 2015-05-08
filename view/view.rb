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

end
