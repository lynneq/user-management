require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      @account.name = "new_name" # cause cannot has the same name
      post :create, account: @account.attributes
    end
    
    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    put :update, id: @account, account: @account.attributes
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
  
  test "should validate account name" do
    @account.name = 'brand_new_name'
    get :validate_account_name, account_name: @account.name
    assert_response :success
    assert_equal "ok", @response.body
  end
  
  test "should validate account name fail" do
    account2 = @account.clone
    account2.name = "new_name_1"
    get :validate_account_name, account_name: account2.name
    
    assert_response :success
    assert_equal  "fail" , @response.body 
  end
end
