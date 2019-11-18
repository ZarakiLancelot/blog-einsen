class AddUsuarioIdToArticulos < ActiveRecord::Migration[5.2]
  def change
    add_reference :articulos, :usuario, foreign_key: true
  end
end
