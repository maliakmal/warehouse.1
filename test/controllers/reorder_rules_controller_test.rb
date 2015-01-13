require 'test_helper'

class ReorderRulesControllerTest < ActionController::TestCase
  setup do
    @reorder_rule = reorder_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reorder_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reorder_rule" do
    assert_difference('ReorderRule.count') do
      post :create, reorder_rule: { company_id: @reorder_rule.company_id, maximum_stock: @reorder_rule.maximum_stock, minimum_stock: @reorder_rule.minimum_stock, product_id: @reorder_rule.product_id }
    end

    assert_redirected_to reorder_rule_path(assigns(:reorder_rule))
  end

  test "should show reorder_rule" do
    get :show, id: @reorder_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reorder_rule
    assert_response :success
  end

  test "should update reorder_rule" do
    patch :update, id: @reorder_rule, reorder_rule: { company_id: @reorder_rule.company_id, maximum_stock: @reorder_rule.maximum_stock, minimum_stock: @reorder_rule.minimum_stock, product_id: @reorder_rule.product_id }
    assert_redirected_to reorder_rule_path(assigns(:reorder_rule))
  end

  test "should destroy reorder_rule" do
    assert_difference('ReorderRule.count', -1) do
      delete :destroy, id: @reorder_rule
    end

    assert_redirected_to reorder_rules_path
  end
end
