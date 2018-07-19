require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "should not save empty fields" do
    @movie = Movie.new
    assert_not @movie.save
  end

  test "should have unique name" do
    @movie_one = Movie.new(name: "teste", rent_price: 1.1)
    @movie_two = Movie.new(name: "teste", rent_price: 1.1)

    @movie_one.save
    assert_not @movie_two.save
  end
end
