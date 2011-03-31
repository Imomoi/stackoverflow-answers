require 'test_helper'

class FooClassesControllerTest < ActionController::TestCase
  setup do
    @foo_class = foo_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foo_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foo_class" do
    assert_difference('FooClass.count') do
      post :create, :foo_class => @foo_class.attributes
    end

    assert_redirected_to foo_class_path(assigns(:foo_class))
  end

  test "should show foo_class" do
    get :show, :id => @foo_class.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @foo_class.to_param
    assert_response :success
  end

  test "should update foo_class" do
    put :update, :id => @foo_class.to_param, :foo_class => @foo_class.attributes
    assert_redirected_to foo_class_path(assigns(:foo_class))
  end

  test "should destroy foo_class" do
    assert_difference('FooClass.count', -1) do
      delete :destroy, :id => @foo_class.to_param
    end

    assert_redirected_to foo_classes_path
  end
end
