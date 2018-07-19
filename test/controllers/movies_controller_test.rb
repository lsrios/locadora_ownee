require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get movies_url
    assert_response :success
  end

  test "should get new" do
    get new_movie_url
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { genre_id: 4, name: "nome", rent_price: 5.0 } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    @movie = Movie.new(name:"teste", genre_id:0, rent_price: 5.0)
    @movie.save
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "should update movie" do
    @movie = Movie.new(name:"teste", genre_id:0, rent_price: 5.0)
    @movie.save
    patch movie_url(@movie), params: { movie: { genre_id: @movie.genre_id, name: "ola teste", rent_price: @movie.rent_price } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end
