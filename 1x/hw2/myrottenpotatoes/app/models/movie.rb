class Movie < ActiveRecord::Base

  def self.all_ratings   #because it is a class method
    ['PG','R','U','17','PG-12'];
  end

end
