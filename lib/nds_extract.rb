$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  director_total  = 0
  result = {}
  directors_database.each do |director|
    director[:movies].each do |movie|
      director_total += movie[:worldwide_gross]
    end 
    result[director[:name]] = director_total
    director_total = 0
  nil
end
