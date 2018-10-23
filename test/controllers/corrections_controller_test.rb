require 'test_helper'

class CorrectionsControllerTest < ActionController::TestCase
  setup do
    @correction = corrections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corrections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correction" do
    assert_difference('Correction.count') do
      post :create, correction: { essay_id: @correction.essay_id, mistake_id: @correction.mistake_id }
    end

    assert_redirected_to correction_path(assigns(:correction))
  end

  test "should show correction" do
    get :show, id: @correction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correction
    assert_response :success
  end

  test "should update correction" do
    patch :update, id: @correction, correction: { essay_id: @correction.essay_id, mistake_id: @correction.mistake_id }
    assert_redirected_to correction_path(assigns(:correction))
  end

  test "should destroy correction" do
    assert_difference('Correction.count', -1) do
      delete :destroy, id: @correction
    end

    assert_redirected_to corrections_path
  end
end
