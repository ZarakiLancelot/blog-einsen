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

require 'test_helper'

class ComentarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
