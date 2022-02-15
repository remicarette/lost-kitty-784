class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :specie
      t.boolean :lost, default: true, null: true
      t.string :phone

      t.timestamps
    end
  end
end
