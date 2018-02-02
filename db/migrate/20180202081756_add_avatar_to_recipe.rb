class AddAvatarToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :avatar, :string
  end
end
