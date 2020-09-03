require 'pry'
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        something = characters.where(actor_id: self.id)[0]
        something_else = shows.where(id: something.show_id)[0]
        "#{something.name} - #{something_else.name}"
    end
end