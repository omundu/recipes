require 'test_helper'

class DrinkIngredientsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drink_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drink_ingredient" do
    assert_difference('DrinkIngredient.count') do
      post :create, :drink_ingredient => { }
    end

    assert_redirected_to drink_ingredient_path(assigns(:drink_ingredient))
  end

  test "should show drink_ingredient" do
    get :show, :id => drink_ingredients(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => drink_ingredients(:one).to_param
    assert_response :success
  end

  test "should update drink_ingredient" do
    put :update, :id => drink_ingredients(:one).to_param, :drink_ingredient => { }
    assert_redirected_to drink_ingredient_path(assigns(:drink_ingredient))
  end

  test "should destroy drink_ingredient" do
    assert_difference('DrinkIngredient.count', -1) do
      delete :destroy, :id => drink_ingredients(:one).to_param
    end

    assert_redirected_to drink_ingredients_path
  end
end
