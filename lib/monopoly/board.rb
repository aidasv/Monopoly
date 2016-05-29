require 'erb'

  SIZE = 10

class Board
  def draw

    template = File.read('index.html.erb')
    render = ERB.new(template)
    File.open('index.html', "w").write(render.result(self.get_binding))

  end

  def render_card
    card = Card.new
    card.draw
  end

  def get_binding
   binding
 end

end
