require 'test_helper'

class GadoTest < ActiveSupport::TestCase

  def setup
    @gado = Gado.new(raca: "vaca", peso: 50)
  end

  test "deve ser valido" do
    assert @gado.valid?
  end

  test "deve ter raça" do
    @gado.raca = "   "
    assert_not @gado.valid?
  end

  test "peso deve ser um numero" do
    @gado.peso = "asd"
    assert_not @gado.valid?
  end

  test "deve ter peso maior que 0" do
    @gado.peso = 0
    assert_not @gado.valid?
  end

  test "deve ter peso menor que 200" do
    @gado.peso = 200
    assert_not @gado.valid?
  end

  test "peso pode ser decimal" do
    @gado.peso = 43.432
    assert @gado.valid?
  end

  test "raça nao pode ser muito grande" do
    @gado.raca = "a"*41
    assert_not @gado.valid?
  end


end
