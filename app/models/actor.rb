require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters


def full_name
 # binding.pry
  first = self.first_name
  last = self.last_name
  full = first + " " + last
  
  full 
end

# def list_roles
  
#   actor = self.id
  
#   array = []
#   find_char = Character.all.map do |i|
#     act = i.actor_id
#     show = i.show_id
#     name = i.name
#     array.push(act, show, name)
#     end

# find_show = Show.all.map do |i|
#    show = i.name
# array.push(show)
# end

#answer = "#{array[2]} - #{array[3]}"


  
 # binding.pry
# end


def list_roles
 char = self.characters
 show = self.shows
 answer = "#{char[0].name} - #{show[0].name}"
end



end