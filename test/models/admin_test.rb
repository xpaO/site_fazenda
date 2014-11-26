require 'test_helper'

class AdminTest < ActiveSupport::TestCase

  def setup
    @admin = Admin.new(name: "admin", password: "password",
                                         password_confirmation: "password")
  end

  test "deve ser válido" do
    assert @admin.valid?
  end
# TESTES -> NOME
  test "nome deve estar presente" do
    @admin.name = "          "
    assert_not @admin.valid?
  end

  test "nome deve ter menos que 11 characteres" do
    @admin.name = "a"*11
    assert_not @admin.valid?
    @admin.name = "a"*10
    assert @admin.valid?
  end

  test "nome deve ter mais que 4 characteres" do
    @admin.name = "a"*4
    assert_not @admin.valid?
    @admin.name = "a"*5
    assert @admin.valid?
  end

  test "nome deve ser único" do
    admin_dup = @admin.dup
    @admin.save
    assert_not admin_dup.valid?
  end

# TESTES -> PASSWORD
  test "password deve ter mais que 5 characteres" do
    @admin.password = @admin.password_confirmation = "a" * 5
    assert_not @admin.valid?
  end

  test "password deve ter menos que 10 characteres" do
    @admin.password = @admin.password_confirmation = "a" * 11
    assert_not @admin.valid?
  end
end
