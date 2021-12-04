require "test_helper"

class DogosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dogo = dogos(:one)
  end

  test "should get index" do
    get dogos_url, as: :json
    assert_response :success
  end

  test "should create dogo" do
    assert_difference('Dogo.count') do
      post dogos_url, params: { dogo: { descripcion: @dogo.descripcion, nombre: @dogo.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show dogo" do
    get dogo_url(@dogo), as: :json
    assert_response :success
  end

  test "should update dogo" do
    patch dogo_url(@dogo), params: { dogo: { descripcion: @dogo.descripcion, nombre: @dogo.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy dogo" do
    assert_difference('Dogo.count', -1) do
      delete dogo_url(@dogo), as: :json
    end

    assert_response 204
  end
end
