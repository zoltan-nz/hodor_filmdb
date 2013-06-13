require 'test_helper'

class RoleshipsControllerTest < ActionController::TestCase
  setup do
    @roleship = roleships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roleships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roleship" do
    assert_difference('Roleship.count') do
      post :create, roleship: { film_id: @roleship.film_id, participant_id: @roleship.participant_id, role_id: @roleship.role_id }
    end

    assert_redirected_to roleship_path(assigns(:roleship))
  end

  test "should show roleship" do
    get :show, id: @roleship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roleship
    assert_response :success
  end

  test "should update roleship" do
    patch :update, id: @roleship, roleship: { film_id: @roleship.film_id, participant_id: @roleship.participant_id, role_id: @roleship.role_id }
    assert_redirected_to roleship_path(assigns(:roleship))
  end

  test "should destroy roleship" do
    assert_difference('Roleship.count', -1) do
      delete :destroy, id: @roleship
    end

    assert_redirected_to roleships_path
  end
end
