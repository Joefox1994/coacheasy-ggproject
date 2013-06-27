require 'test_helper'

class Comment4sControllerTest < ActionController::TestCase
  setup do
    @comment4 = comment4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comment4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment4" do
    assert_difference('Comment4.count') do
      post :create, comment4: { body: @comment4.body, program_id: @comment4.program_id }
    end

    assert_redirected_to comment4_path(assigns(:comment4))
  end

  test "should show comment4" do
    get :show, id: @comment4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment4
    assert_response :success
  end

  test "should update comment4" do
    put :update, id: @comment4, comment4: { body: @comment4.body, program_id: @comment4.program_id }
    assert_redirected_to comment4_path(assigns(:comment4))
  end

  test "should destroy comment4" do
    assert_difference('Comment4.count', -1) do
      delete :destroy, id: @comment4
    end

    assert_redirected_to comment4s_path
  end
end
