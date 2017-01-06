require 'test_helper'

class WelcomeUsersControllerTest < ActionController::TestCase
  setup do
    @welcome_user = welcome_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:welcome_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create welcome_user" do
    assert_difference('WelcomeUser.count') do
      post :create, welcome_user: @welcome_user.attributes
    end

    assert_redirected_to welcome_user_path(assigns(:welcome_user))
  end

  test "should show welcome_user" do
    get :show, id: @welcome_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @welcome_user
    assert_response :success
  end

  test "should update welcome_user" do
    put :update, id: @welcome_user, welcome_user: @welcome_user.attributes
    assert_redirected_to welcome_user_path(assigns(:welcome_user))
  end

  test "should destroy welcome_user" do
    assert_difference('WelcomeUser.count', -1) do
      delete :destroy, id: @welcome_user
    end

    assert_redirected_to welcome_users_path
  end
end
