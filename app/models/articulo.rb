# == Schema Information
#
# Table name: articulos
#
#  id               :integer          not null, primary key
#  titulo           :string
#  cuerpo           :text
#  contador_visitas :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Articulo < ApplicationRecord
    validates :titulo, presence: true, length: { minimum: 8 }
    validates :cuerpo, presence: true, length: { minimum: 20 }
end
