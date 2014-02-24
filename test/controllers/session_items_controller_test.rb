require 'test_helper'

class SessionItemsControllerTest < ActionController::TestCase
  setup do
    @session_item = session_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:session_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session_item" do
    assert_difference('SessionItem.count') do
      post :create, session_item: { item_id: @session_item.item_id, note: @session_item.note, session_id: @session_item.session_id, session_qty: @session_item.session_qty }
    end

    assert_redirected_to session_item_path(assigns(:session_item))
  end

  test "should show session_item" do
    get :show, id: @session_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session_item
    assert_response :success
  end

  test "should update session_item" do
    patch :update, id: @session_item, session_item: { item_id: @session_item.item_id, note: @session_item.note, session_id: @session_item.session_id, session_qty: @session_item.session_qty }
    assert_redirected_to session_item_path(assigns(:session_item))
  end

  test "should destroy session_item" do
    assert_difference('SessionItem.count', -1) do
      delete :destroy, id: @session_item
    end

    assert_redirected_to session_items_path
  end
end
