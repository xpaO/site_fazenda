require 'test_helper'

class PaginasBasicasControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get localizacao" do
    get :localizacao
    assert_response :success
  end

  test "should get contato" do
    get :contato
    assert_response :success
  end

end
