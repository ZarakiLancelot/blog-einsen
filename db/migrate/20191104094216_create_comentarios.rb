class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.references :usuario, foreign_key: true
      t.references :articulo, foreign_key: true
      t.text :cuerpo

      t.timestamps
    end
  end
end
