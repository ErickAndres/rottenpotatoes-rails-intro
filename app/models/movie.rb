class Movie < ActiveRecord::Base

  def self.all_ratings
    ['G','PG','PG-13','R']
  end
  
  def self.with_ratings ratings_list, orderby
    if ratings_list.nil? || ratings_list.length == 0
      Movie.where(:rating => self.all_ratings).order(orderby)
    end
    Movie.where(:rating => ratings_list).order(orderby)
  end
  
end
