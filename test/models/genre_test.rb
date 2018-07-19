require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "genre must have a name" do
    @genre = Genre.new

    assert_not @genre.save
  end
end
