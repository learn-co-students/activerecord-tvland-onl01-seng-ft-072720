class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

def actors_list
  a = self.actors
  b = a[0].full_name
  c = []
  d = c.push(b)
 #binding.pry
end





end