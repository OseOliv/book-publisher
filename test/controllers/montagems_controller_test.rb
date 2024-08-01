require "test_helper"

class MontagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @montagem = montagems(:one)
  end

  test "should get index" do
    get montagems_url
    assert_response :success
  end

  test "should get new" do
    get new_montagem_url
    assert_response :success
  end

  test "should create montagem" do
    assert_difference("Montagem.count") do
      post montagems_url, params: { montagem: { livro_id: @montagem.livro_id } }
    end

    assert_redirected_to montagem_url(Montagem.last)
  end

  test "should show montagem" do
    get montagem_url(@montagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_montagem_url(@montagem)
    assert_response :success
  end

  test "should update montagem" do
    patch montagem_url(@montagem), params: { montagem: { livro_id: @montagem.livro_id } }
    assert_redirected_to montagem_url(@montagem)
  end

  test "should destroy montagem" do
    assert_difference("Montagem.count", -1) do
      delete montagem_url(@montagem)
    end

    assert_redirected_to montagems_url
  end
end
