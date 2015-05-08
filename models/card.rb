class Card
  attr_reader :question, :answer
  attr_accessor :answer_state
  def initialize(args = {})
    @question = args[:question]
    @answer = args[:answer]
    @answer_state = args.fetch(:answered) { false }
  end

  def to_s
    "Question:\n#{question}"
  end
end
