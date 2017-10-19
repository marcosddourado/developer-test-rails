require 'test_helper'

class WebpageTest < ActiveSupport::TestCase

	test "should not save webpage without title" do
	  webpage = Webpage.new
	  assert_not webpage.save, "Saved the webpage without a title"
	end
end
