class Card


  def draw
    template = File.read('./html/_card.html.erb')
    ERB.new(template).result(get_binding)
  end

  def style_class
    'simple-card'
  end

  def middle_text
    'Simple card'
  end

  def get_binding
    binding
  end

end
