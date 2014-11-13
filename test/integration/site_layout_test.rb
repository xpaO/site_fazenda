require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout test" do
    get root_path
    assert_template "paginas_basicas/inicio"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", localizacao_path
    assert_select "a[href=?]", contato_path
    assert_select "a[href=?]", gado_path
  end
end
