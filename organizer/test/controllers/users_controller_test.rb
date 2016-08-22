require 'test_helper'

class UserTestController < ActiveSupport::TestCase
  get users_new_url
    assert_response :success
  end

end
