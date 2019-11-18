# == Schema Information
#
# Table name: comentarios
#
#  id          :integer          not null, primary key
#  usuario_id  :integer
#  articulo_id :integer
#  cuerpo      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :articulo
end
