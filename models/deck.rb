class Deck
  attr_reader :cards
  attr_accessor :current_card
  def initialize(args = {})
    @cards = args[:cards]
    @current_card = nil
  end

  def pick_card(card_array)
    current_array = card_array.shuffle!
    current_card = current_array.first
  end

  def show_answer(card)
    card.answer
  end

  def show_question(card)
    card.question
  end

  def answered!(card)
    card.answer_state = true
  end

  def correct_answer?(card, input)
    card.answer == input
  end

  def show_unanswered
    cards.reject {|card| card.answer_state}
  end

  def show_answered
    cards.select {|card| card.answer_state}
  end

  def all_answered?
    cards.all? {|c| c.answer_state}
  end
end
