module ApplicationHelper
  
  def haml(str)
    engine = Haml::Engine.new(str)
    engine.render
  end
  
end
