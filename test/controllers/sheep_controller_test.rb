require 'test_helper'

class SheepControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sheep = sheep(:one)
  end

  test "should get index" do
    get sheep_index_url
    assert_response :success
  end

  test "should get new" do
    get new_sheep_url
    assert_response :success
  end

  test "should create sheep" do
    assert_difference('Sheep.count') do
      post sheep_index_url, params: { sheep: { name: @sheep.name, personality: @sheep.personality } }
    end

    assert_redirected_to sheep_url(Sheep.last)
  end

  test "should show sheep" do
    get sheep_url(@sheep)
    assert_response :success
  end

  test "should get edit" do
    get edit_sheep_url(@sheep)
    assert_response :success
  end

  test "should update sheep" do
    patch sheep_url(@sheep), params: { sheep: { name: @sheep.name, personality: @sheep.personality } }
    assert_redirected_to sheep_url(@sheep)
  end

  test "should destroy sheep" do
    assert_difference('Sheep.count', -1) do
      delete sheep_url(@sheep)
    end

    assert_redirected_to sheep_index_url
  end
end
