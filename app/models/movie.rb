class Movie < ActiveRecord::Base
   
#instantiates a movie with a given title, and saves it to the database
def self.create_with_title(title)
    Movie.create(title: title)
end
 
#returns the first item in the table
def self.first_movie
    Movie.first 
end

#returns the last item in the table
def self.last_movie
    Movie.last 
end 
# returns the number of records in the table
def self.movie_count
    Movie.count
end

#returns a movie from the table based on its id
def self.find_movie_with_id(id)
    Movie.find(id) 
end

#returns a movie from the table based on its attributes 
def self.find_movie_with_attributes(attribute)
    Movie.find_by(attribute)
end

#uses a .where clause to select the appropriate movies released after 2002
def self.find_movies_after_2002
    Movie.where("release_date > 2002")
end

# updates a single movie 
def update_with_attributes(attribute)
    Movie.find_by(attribute)
    update(attribute)
end

#updates the title of all records at once 
def self.update_all_titles(title)
    Movie.update(title: title)
end

#deletes a single item 
def self.delete_by_id(id)
    Movie.find(id).destroy
end

#deletes all items at once
def self.delete_all_movies
    Movie.destroy_all
end
end