class Card
  attr_reader :question, :answer
  attr_accessor :answer_state
  def intialize(args={})
    @question = question
    @answer = answer
    @answer_state = args.fetch(:answered) { false }
  end

  def to_s
    "Question:\n#{question}"
  end
end
