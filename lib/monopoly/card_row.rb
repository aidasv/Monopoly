class CardRow

  attr_accessor :card1, :card2 

  def initialize(card1, card2)
    @card1 = card1
    @card2 = card2
  end

  def draw
    template = File.read('./html/_card_row.html.erb')
    ERB.new(template).result(get_binding)
  end

  def get_binding
    binding
  end

end
