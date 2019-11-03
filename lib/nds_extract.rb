$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
require "pp"
def directors_totals(nds)
  director = Hash.new
  row_count = 0
  while row_count < nds.length do 
    #nds[row_count][item = hash]
    director_name = nds[row_count][:name]
    item_count = 0 
    gross_total = 0
    while item_count <nds[row_count][:movies].length do
      #per_movie = nds[row_count][:movies = hash][:worldwide_gross]
      gross_total+= nds[row_count][:movies][item_count][:worldwide_gross]
      item_count+=1
    end
    director[director_name]=gross_total 
    row_count +=1
  end
  director 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # nil
end
