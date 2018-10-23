require 'test_helper'

class MistakesControllerTest < ActionController::TestCase
  setup do
    @mistake = mistakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mistakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mistake" do
    assert_difference('Mistake.count') do
      post :create, mistake: { category: @mistake.category }
    end

    assert_redirected_to mistake_path(assigns(:mistake))
  end

  test "should show mistake" do
    get :show, id: @mistake
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mistake
    assert_response :success
  end

  test "should update mistake" do
    patch :update, id: @mistake, mistake: { category: @mistake.category }
    assert_redirected_to mistake_path(assigns(:mistake))
  end

  test "should destroy mistake" do
    assert_difference('Mistake.count', -1) do
      delete :destroy, id: @mistake
    end

    assert_redirected_to mistakes_path
  end
end
