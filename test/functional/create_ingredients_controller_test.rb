require 'test_helper'

class CreateIngredientsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_ingredient" do
    assert_difference('CreateIngredient.count') do
      post :create, :create_ingredient => { }
    end

    assert_redirected_to create_ingredient_path(assigns(:create_ingredient))
  end

  test "should show create_ingredient" do
    get :show, :id => create_ingredients(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => create_ingredients(:one).to_param
    assert_response :success
  end

  test "should update create_ingredient" do
    put :update, :id => create_ingredients(:one).to_param, :create_ingredient => { }
    assert_redirected_to create_ingredient_path(assigns(:create_ingredient))
  end

  test "should destroy create_ingredient" do
    assert_difference('CreateIngredient.count', -1) do
      delete :destroy, :id => create_ingredients(:one).to_param
    end

    assert_redirected_to create_ingredients_path
  end
end
