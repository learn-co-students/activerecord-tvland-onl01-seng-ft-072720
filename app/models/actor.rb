class Actor < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.collect do |s|
            "#{s.name} - #{s.show.name}"
        end
    end

end
