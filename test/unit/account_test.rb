require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  def test_should_account_record_fail_to_save_when_no_propertities_specified
    account = Account.new
    assert !account.save    
  end
  
  def test_should_account_record_save
    new_account = accounts(:one)
    new_account.name = "new_account_name"
    assert new_account.save
  end
  
  def test_should_account_record_fail_to_save_without_name
    new_account = Account.new  :level => "0", :member_since => 2012/01/29
    assert !new_account.save
  end
  
  def test_should_account_record_fail_to_save_when_name_exist
    new_account = Account.new :name => "new_name_1", :level => 0
    assert !new_account.save
  end
  
  def test_should_account_recored_fail_to_save_without_level
    new_account = Account.new  :name => "new_account_name", :member_since => 2012/01/29
    assert !new_account.save
  end
  
  def test_should_has_account_name_return_true_when_name_exist
    assert Account.has_account_name?('new_name_1')
  end

  def test_should_has_account_name_return_false_when_it_is_new_name
    assert !Account.has_account_name?('new_new_name')
  end
end
