require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name works as expected" do
    user = User.new(first_name: 'Johnny', last_name: 'Bravo')
    assert_equal 'Johnny Bravo', user.full_name
  end

  test "full_name works with users who only have a first name" do
    user = User.new(first_name: 'Johnny')
    assert_equal 'Johnny', user.full_name
  end

  test "full_name works with users who only have a last name" do
    user = User.new(last_name: 'Bravo')
    assert_equal 'Bravo', user.full_name
  end

  test "full_name works with empty names" do
    user = User.new(first_name: '', last_name: '')
    assert_equal '', user.full_name
  end
end
