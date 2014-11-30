require 'test_helper'

class MainControllerTest < ActionController::TestCase
  def setup
    @base_title = "Track My Mixes"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get news" do
    get :news
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  test "should get blog" do
    get :blog
    assert_response :success
    assert_select "title", "Blog | #{@base_title}"
  end

  test "should get terms" do
    get :terms
    assert_response :success
    assert_select "title", "Terms | #{@base_title}"
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
    assert_select "title", "Privacy | #{@base_title}"
  end

end
