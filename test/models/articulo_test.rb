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

require 'test_helper'

class ArticuloTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
