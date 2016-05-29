class Card
  def draw
    template = File.read('./html/_card.html.erb')
    ERB.new(template).result
  end
end
