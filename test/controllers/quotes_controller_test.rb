require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @quote = quotes(:one)
  end

  test "should get index" do
    get :index, params: { project_id: @project }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { project_id: @project }
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post :create, params: { project_id: @project, quote: @quote.attributes }
    end

    assert_redirected_to project_quote_path(@project, Quote.last)
  end

  test "should show quote" do
    get :show, params: { project_id: @project, id: @quote }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { project_id: @project, id: @quote }
    assert_response :success
  end

  test "should update quote" do
    put :update, params: { project_id: @project, id: @quote, quote: @quote.attributes }
    assert_redirected_to project_quote_path(@project, Quote.last)
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete :destroy, params: { project_id: @project, id: @quote }
    end

    assert_redirected_to project_quotes_path(@project)
  end
end
