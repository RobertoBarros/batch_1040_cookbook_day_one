class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Pegar todas as receitas do cookbook
    recipes = @cookbook.all

    # 2. Mandar a view mostrar as recipes para o usuário
    @view.display_list(recipes)
  end

  def create
    # 1. Perguntar o nome da receita
    name = @view.ask_name

    # 2. Perguntar a descrição da receita
    description = @view.ask_description

    # 3. Criar um novo objeto recipe
    new_recipe = Recipe.new(name, description)

    # 4. Adicionar o novo objeto recipe ao cookbook
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    # 1. Mostrar todas as receitas
    list

    # 2. Perguntar qual o index da receita a ser removida
    index = @view.ask_index

    # 3. Manda o cookbook remover a receita pelo index
    @cookbook.remove_recipe(index)
  end

end
