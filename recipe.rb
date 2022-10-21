class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

# macarronada = Recipe.new('macarronada', 'Macarrão e molho')
# macarronada.name
# macarronada.description
