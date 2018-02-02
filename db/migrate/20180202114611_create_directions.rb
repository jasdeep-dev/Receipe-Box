class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.string :steps
      t.belongs_to :recipe

      t.timestamps
    end
  end
end
