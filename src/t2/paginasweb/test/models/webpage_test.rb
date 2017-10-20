require 'test_helper'

class WebpageTest < ActiveSupport::TestCase

test "should not save webpage without title" do
  webpage = Webpage.new
  assert_not webpage.save, "Saved the webpage without a title"
end

test "should not save webpage with a title that contains less than 5 characters" do
  webpage =  webpages(:error)
  assert_not webpage.save, "Saved the webpage with a title that contains less than 5 characters"
end

test "should save webpage with a title that contains more than 5 characters" do
  webpage =  webpages(:one)
  assert webpage.save, "Saved the webpage with a title that contains more than 5 characters"
end

end
