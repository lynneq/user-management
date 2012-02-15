require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_should_user_record_fail_to_save_when_no_propertities_specified
    user       = User.new
    assert !user.save
  end

  def test_should_user_record_valid_with_all_required_values_filled
    user       = users(:one)
    assert user.save
  end

  def test_should_user_record_fail_to_save_without_name
    user      = users(:one)
    user.name = ''
    assert !user.save
  end

  def test_should_user_record_not_valid_with_same_name
    user1 = users(:one)
    assert user1.save

    user2 = users(:two)
    user2.name = "new_name_1"
    assert !user2.save
  end

  def test_should_user_record_fail_to_save_without_password
    user = User.new :name => 'new_name', :email => "name@example.com"
    assert !user.save
  end

  def test_should_user_record_fail_to_save_without_email
    user = User.new :name => 'new_name', :password => 'asdf'
    assert !user.save
  end

  def test_should_user_recored_save_when_password_confirmation_match_password
    user = users(:one)
    user.password_confirmation = 'asdf'
    assert user.save
  end

  def test_should_user_recored_fail_to_save_when_password_confirmation_not_match_password
    user = users(:one)
    user.password_confirmation = 'asdfasdf'
    assert !user.save
  end

  def test_should_user_record_fail_to_save_when_email_fail_to_match_pattern
    user = users(:one)
    user.email = "name@example"

    regexp = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    assert_no_match regexp, user.email
    assert !user.save
  end

  def test_should_has_user_name_return_true_when_name_exist
    assert User.has_user_name?('new_name_1')
  end

  def test_should_has_user_name_return_false_when_it_is_new_name
    assert !User.has_user_name?('new_new_name')
  end
end
