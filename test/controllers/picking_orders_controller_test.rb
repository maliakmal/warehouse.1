require 'test_helper'

class PickingOrdersControllerTest < ActionController::TestCase
  setup do
    @picking_order = picking_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picking_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picking_order" do
    assert_difference('PickingOrder.count') do
      post :create, picking_order: { order_id: @picking_order.order_id, status: @picking_order.status, user_id: @picking_order.user_id }
    end

    assert_redirected_to picking_order_path(assigns(:picking_order))
  end

  test "should show picking_order" do
    get :show, id: @picking_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picking_order
    assert_response :success
  end

  test "should update picking_order" do
    patch :update, id: @picking_order, picking_order: { order_id: @picking_order.order_id, status: @picking_order.status, user_id: @picking_order.user_id }
    assert_redirected_to picking_order_path(assigns(:picking_order))
  end

  test "should destroy picking_order" do
    assert_difference('PickingOrder.count', -1) do
      delete :destroy, id: @picking_order
    end

    assert_redirected_to picking_orders_path
  end
end
