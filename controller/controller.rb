require_relative '../view/view.rb'
require_relative '../models/deck.rb'
require_relative '../models/card.rb'
require_relative '../modules/parser.rb'

require 'pry'
class GameController
  attr_reader :deck
  def initialize
    # binding.pry
    @deck = Deck.new(Parser.parse_text_file('flashcard_samples.txt'))
  end

  def start
    View.welcome
    run
  end

  def run
    input = ""
    until input == 'quit' || deck.all_answered?
      card = deck.pick_card(deck.show_unanswered)
      View.display(deck.show_question(card))
      input = View.input
      if deck.correct_answer?(card, input)
        View.correct
        deck.answered!(card)
      elsif input == 'quit'
        exit
      else
        View.incorrect
      end
      View.display(deck.show_answer(card))
    end
  end
end

game = GameController.new
game.start
