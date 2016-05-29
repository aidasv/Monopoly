require 'erb'

class Board

  attr_accessor :cards, :sides

  SIZE = 10
  VERTICAL = 0
  HORIZONTAL = 1

  def initialize
    @cards = [
      JailCard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      Vcard.new,
      FreeParkingCard.new
    ]

    @sides = [
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new],
      [Hcard.new,Hcard.new]
        ]
  end

  def draw
    template = File.read('index.html.erb')
    render = ERB.new(template)
    File.open('index.html', "w").write(render.result(self.get_binding))
  end

  def render_top_cards
    html = ''
    cards.each { |card| html << card.draw}
    html
  end

  def render_sides_cards
    html = ''
    rows = sides.map{ |row| CardRow.new(row[0], row[1])}
    rows.each {|row| html << row.draw}
    html
  end

  def get_binding
    binding
  end

end
