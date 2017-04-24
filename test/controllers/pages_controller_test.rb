require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "SignUp"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | SignUp"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | SignUp"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | SignUp"
  end

end
