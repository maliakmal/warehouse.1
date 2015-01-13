require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { company_as: @order.company_as, company_id: @order.company_id, description: @order.description, location_id: @order.location_id, location_id: @order.location_id, priority: @order.priority, product_id: @order.product_id, qty: @order.qty, ref: @order.ref, scheduled: @order.scheduled, status: @order.status, type: @order.type, user_id: @order.user_id }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { company_as: @order.company_as, company_id: @order.company_id, description: @order.description, location_id: @order.location_id, location_id: @order.location_id, priority: @order.priority, product_id: @order.product_id, qty: @order.qty, ref: @order.ref, scheduled: @order.scheduled, status: @order.status, type: @order.type, user_id: @order.user_id }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
