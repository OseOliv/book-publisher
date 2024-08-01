require "application_system_test_case"

class MontagemsTest < ApplicationSystemTestCase
  setup do
    @montagem = montagems(:one)
  end

  test "visiting the index" do
    visit montagems_url
    assert_selector "h1", text: "Montagems"
  end

  test "should create montagem" do
    visit montagems_url
    click_on "New montagem"

    fill_in "Livro", with: @montagem.livro_id
    click_on "Create Montagem"

    assert_text "Montagem was successfully created"
    click_on "Back"
  end

  test "should update Montagem" do
    visit montagem_url(@montagem)
    click_on "Edit this montagem", match: :first

    fill_in "Livro", with: @montagem.livro_id
    click_on "Update Montagem"

    assert_text "Montagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Montagem" do
    visit montagem_url(@montagem)
    click_on "Destroy this montagem", match: :first

    assert_text "Montagem was successfully destroyed"
  end
end
