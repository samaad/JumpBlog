require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end
  
  test "should route to page" do
    assert_routing '/pages/1',{:controller => "pages", :action => "show", :id => "1"}
  end

  test "should route to about page" do
    assert_routing '/pages/1',{:controller => "pages", :action => "about"}
  end
  
  %w[about contact cv].each do |page|
    get page, controller: 'pages', action: page
  end
  
end
