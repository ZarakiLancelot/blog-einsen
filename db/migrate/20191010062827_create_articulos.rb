class CreateArticulos < ActiveRecord::Migration[5.2]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :cuerpo
      t.integer :contador_visitas

      t.timestamps
    end
  end
end
