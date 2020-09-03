class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters

    def full_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        results = []
         self.characters.each.with_index do |character, i|
            results << "#{character.name} - #{self.shows[i].name}"
        end
        results
    end
end

