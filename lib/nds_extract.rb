$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database[0][:movies]

def directors_totals(nds)

  director_total  = 0
  result = {}
  directors_database.each do |director|
    director[:movies].each do |movie|
      director_total += movie[:worldwide_gross]
    end
    result[director[:name]] = director_total
    director_total = 0
  end
  result
end
