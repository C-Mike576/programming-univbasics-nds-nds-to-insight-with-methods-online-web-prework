require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  name_index = 0
  while name_index < nds.length do
    movie_gross = 0
    movie_index = 0
    while movie_index < nds[name_index][:movies].length do
        movie_gross += nds[name_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    
        result[nds[name_index][:name]] = movie_gross
        name_index += 1
  end
	pp result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  result = {}
  movie_gross = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
      movie_gross += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    result = movie_gross
    pp result
end
