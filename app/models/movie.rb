class Movie < ActiveRecord::Base
  def self.create_with_title(movie_title)
    self.create(title: movie_title)
  end

  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.count
  end

  def self.find_movie_with_id(movie_id)
    self.find movie_id
  end

  def self.find_movie_with_attributes(movie_attribute)
    self.find_by movie_attribute
  end

  def self.find_movies_after_2002
    self.where("release_date > 2002")
  end

  def update_with_attributes(movie_attribute)
    self.update movie_attribute
  end

  def self.update_all_titles(movie_titles)
    self.update title: movie_titles
  end

  def self.delete_by_id movie_id
    movie_to_be_deleted = self.find movie_id
    movie_to_be_deleted.destroy
  end

  def self.delete_all_movies
    self.destroy_all
  end
end
