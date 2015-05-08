require_relative '../view/view.rb'
require_relative '../models/deck.rb'
require_relative '../models/card.rb'
require_relative '../modules/parser.rb'

require 'pry'
class GameController
  attr_reader :decks_array
  attr_accessor :deck
  def initialize
    # binding.pry
    @decks_array = [Deck.new(Parser.parse_text_file('flashcard_samples.txt')),
                  Deck.new(Parser.parse_text_file('animal_cards.txt'))]
    @deck = decks_array[0]
  end


  def start
    View.welcome
    run
  end

  def run

    input = View.input
    case input
    when '1'
      deck = decks_array[0]
    when '2'
      deck = decks_array[1]
    else
      View.deck_not_available
    end

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
