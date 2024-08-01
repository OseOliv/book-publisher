require "application_system_test_case"

class PecasTest < ApplicationSystemTestCase
  setup do
    @peca = pecas(:one)
  end

  test "visiting the index" do
    visit pecas_url
    assert_selector "h1", text: "Pecas"
  end

  test "should create peca" do
    visit pecas_url
    click_on "New peca"

    fill_in "Fornecedor", with: @peca.fornecedor_id
    fill_in "Nome", with: @peca.nome
    fill_in "Valor", with: @peca.valor
    click_on "Create Peca"

    assert_text "Peca was successfully created"
    click_on "Back"
  end

  test "should update Peca" do
    visit peca_url(@peca)
    click_on "Edit this peca", match: :first

    fill_in "Fornecedor", with: @peca.fornecedor_id
    fill_in "Nome", with: @peca.nome
    fill_in "Valor", with: @peca.valor
    click_on "Update Peca"

    assert_text "Peca was successfully updated"
    click_on "Back"
  end

  test "should destroy Peca" do
    visit peca_url(@peca)
    click_on "Destroy this peca", match: :first

    assert_text "Peca was successfully destroyed"
  end
end
