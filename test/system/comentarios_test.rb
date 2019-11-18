require "application_system_test_case"

class ComentariosTest < ApplicationSystemTestCase
  setup do
    @comentario = comentarios(:one)
  end

  test "visiting the index" do
    visit comentarios_url
    assert_selector "h1", text: "Comentarios"
  end

  test "creating a Comentario" do
    visit comentarios_url
    click_on "New Comentario"

    fill_in "Articulo", with: @comentario.articulo_id
    fill_in "Cuerpo", with: @comentario.cuerpo
    fill_in "Usuario", with: @comentario.usuario_id
    click_on "Create Comentario"

    assert_text "Comentario was successfully created"
    click_on "Back"
  end

  test "updating a Comentario" do
    visit comentarios_url
    click_on "Edit", match: :first

    fill_in "Articulo", with: @comentario.articulo_id
    fill_in "Cuerpo", with: @comentario.cuerpo
    fill_in "Usuario", with: @comentario.usuario_id
    click_on "Update Comentario"

    assert_text "Comentario was successfully updated"
    click_on "Back"
  end

  test "destroying a Comentario" do
    visit comentarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comentario was successfully destroyed"
  end
end
