

module Parser
  def self.parse_text_file(file)
    ary= []
    File.readlines(file).each.each_slice(3) do |keyline, valueline, empty|
      ary << { question: keyline.chomp, answer: valueline.chomp }
    end
    ary
  end
end


