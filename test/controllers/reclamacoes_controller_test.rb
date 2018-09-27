require 'test_helper'

class ReclamacoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reclamacoes_index_url
    assert_response :success
  end

end
