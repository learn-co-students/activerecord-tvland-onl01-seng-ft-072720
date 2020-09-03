require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    something = characters.where(show_id: self.id)
    # binding.pry
    something_else = actors.where(id: something)
    something_else.collect {|actor| "#{actor.first_name} #{actor.last_name}"}
  end
end