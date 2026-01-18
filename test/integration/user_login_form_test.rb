require "test_helper"

class UserLoginFormTest < ActionDispatch::IntegrationTest
  test "login form displays expected fields and button" do
    get new_user_session_path
    assert_response :success

    # Heading
    assert_select "h2", text: "Log in"

    # Email field
    assert_select "form input[type=email][name='user[email]']"

    # Password field
    assert_select "form input[type=password][name='user[password]']"

    # Remember me checkbox (if enabled in Devise mapping)
    assert_select "form input[type=checkbox][name='user[remember_me]']", maximum: 1

    # Submit button
    assert_select "form input[type=submit][value='Log in']"
  end
end
