require "test_helper"

class PersonalControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get personal_about_url
    assert_response :success
  end

  test "should get resume" do
    get personal_resume_url
    assert_response :success
  end
end
