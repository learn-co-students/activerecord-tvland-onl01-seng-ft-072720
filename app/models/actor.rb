class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :cha

    def full_name
        full_name = self.first_name + "" + last_name
    end 

    def list_roles
        self.characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end 
end