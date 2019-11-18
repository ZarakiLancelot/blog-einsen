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
#  usuario_id       :integer
#

class Articulo < ApplicationRecord
    belongs_to :usuario
    validates :titulo, presence: true, length: { minimum: 8 }
    validates :cuerpo, presence: true, length: { minimum: 20 }

    has_many :comentario

    before_save :set_contador_visitas

    def update_contador_visitas
        self.save if self.contador_visitas.nil?
        self.update(contador_visitas: self.contador_visitas + 1)
    end

    private

    def set_contador_visitas
        self.contador_visitas ||= 0
    end
end
