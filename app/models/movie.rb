class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG','PG-13','R']
  end

  def self.get_movies(ratings, sort_by)
    if ratings.nil?
      movies = Movie.all
    else
      movies = Movie.where(rating: ratings.keys)
    end
    if !sort_by.nil?
      movies = movies.order(sort_by)
    end
    return movies
  end
end