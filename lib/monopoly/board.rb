require 'erb'

class Board
  def draw
    template = File.read('index.html.erb')
    render = ERB.new(template)
    File.open('index.html', "w").write(render.result)

  end

end
