require 'test_helper'

class PaginasBasicasControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
    assert_select "title", "Início | FAZENDA"
  end

  test "should get localizacao" do
    get :localizacao
    assert_response :success
    assert_select "title", "Localização | FAZENDA"
  end

  test "should get contato" do
    get :contato
    assert_response :success
    assert_select "title", "Contato | FAZENDA"
  end

end
